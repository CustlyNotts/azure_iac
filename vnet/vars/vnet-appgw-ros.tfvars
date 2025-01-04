subscription_id     = <subscription_id>
resource_group_name = "rg-ros-prod"
name                = "vnet-appgw-ros"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-ros"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-cargoes-platform-cluster-staging-vnet = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet"
  }
  peer-vnet-appgw-to-cargoes-platform-cluster-staging-green-vnet = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-green-vnet"
  }
  peer-vnet-appgw-to-cargoes-platform-nonprod-vnet-dr = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging-dr/providers/Microsoft.Network/virtualNetworks/cargoes-platform-nonprod-vnet-dr"
  }
}

create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "ros",
  "Application Owner" = "Tapabrata Dasgupta",
  "ENV"               = "Prod"
}