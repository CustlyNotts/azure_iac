subscription_id     = <subscription_id>
resource_group_name = "rg-nau-infra-prod"
name                = "vnet-appgw-nau-prod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-nau-prod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-vnet-nau-avd = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rgnauavd/providers/Microsoft.Network/virtualNetworks/vnet-nau-avd"
  }
  peer-vnet-appgw-to-vnet-nau-aks-production = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/virtualNetworks/vnet-nau-aks-production"
  }
  peer-vnet-appgw-to-vnetnauprod = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod"
  }
  peer-vnet-appgw-to-vnetofbiz= {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-Ofbiz-Prod/providers/Microsoft.Network/virtualNetworks/Vnet-Ofbiz"
  }
   peer-vnet-dpw-uae-smart-ssh= {
    remote_virtual_network_id = "/subscriptions/113fbeb3-ce3b-4e2a-b3fd-f9176ff893f3/resourceGroups/rg-dpw-uae-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-uae-smart-ssh"
  }
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "NAU",
  "Application Owner" = "Ibrahim Ali Al-Ali",
  "ENV"               = "Prod"
}