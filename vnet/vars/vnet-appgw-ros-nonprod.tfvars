subscription_id     = <subscription_id>
resource_group_name = "rg-ros-nonprod"
name                = "vnet-appgw-ros-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-ros-nonprod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-Vnet-ROS-NonProd = {
    remote_virtual_network_id = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/virtualNetworks/Vnet-ROS-NonProd"
  }
  peer-vnet-appgw-to-vnet-ros-prod = {
    remote_virtual_network_id = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-ros-prod"
  }
  peer-vnet-appgw-to-vnet-ros-dr = {
    remote_virtual_network_id = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-dr/providers/Microsoft.Network/virtualNetworks/vnet-ros-dr"
  }
  peer-vnet-appgw-to-vnet-appgw-ros= {
    remote_virtual_network_id = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-ros"
  }
}

create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "ros",
  "Application Owner" = "Tapabrata Dasgupta",
  "ENV"               = "Non-Prod"
}