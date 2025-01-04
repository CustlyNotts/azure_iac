subscription_id     = <subscription_id>
resource_group_name = "rg-nau-infra-nonprod"
name                = "vnet-appgw-nau-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-nau-nonprod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-vnet-nau-avd = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rgnauavd/providers/Microsoft.Network/virtualNetworks/vnet-nau-avd"
  }
  peer-vnet-appgw-to-vnet-nau = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/virtualNetworks/vnetnau"
  }
  peer-vnet-appgw-to-vnetnauuat = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauuat/providers/Microsoft.Network/virtualNetworks/Vnetnauuat"
  }
  peer-vnet-appgw-to-vnetofbizuat = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RgOfbizuat/providers/Microsoft.Network/virtualNetworks/Vnetofbizuat"
  }
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "NAU",
  "Application Owner" = "Ibrahim Ali Al-Ali",
  "ENV"               = "NonProd"
}