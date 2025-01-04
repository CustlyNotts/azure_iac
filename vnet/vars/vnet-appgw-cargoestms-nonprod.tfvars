subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestms-nonprod-infra"
name                = "vnet-appgw-cargoestms-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-cargoestms-nonprod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-vnet-cargoestms-nonprod = {
    remote_virtual_network_id = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-nonprod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-nonprod"
  }
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "CargoesTMS",
  "Application Owner" = "Ritesh Singh/Shiv Suthar",
  "ENV"               = "NonProd"
}