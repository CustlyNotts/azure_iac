subscription_id     = <subscription_id>
resource_group_name = "rg-wms-infra-nonprod"
name                = "vnet-appgw-wms-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-wms-nonprod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-vnet-dpw-smart-ssh = {
    remote_virtual_network_id = "/subscriptions/113fbeb3-ce3b-4e2a-b3fd-f9176ff893f3/resourceGroups/rg-dpw-uae-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-uae-smart-ssh"
  }
  peer-vnet-appgw-to-vnet-wms-nonprod = {
    remote_virtual_network_id = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-wms-nonprod"
  }
#   peer-vnet-appgw-to-vnetnauuat = {
#     remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauuat/providers/Microsoft.Network/virtualNetworks/Vnetnauuat"
#   }
#   peer-vnet-appgw-to-vnetofbizuat = {
#     remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RgOfbizuat/providers/Microsoft.Network/virtualNetworks/Vnetofbizuat"
#   }
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "Warehouse Management System",
  "Application Owner" = "Sandeep Gupta",
  "RITM"              = "RITM0097856"
  "ENV"               = "NonProd"
}