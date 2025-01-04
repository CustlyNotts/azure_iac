subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipxdev-infra"
name                = "vnet-appgw-shipx-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-shipx-nonprod"
    snet_mask = 28
  }
]

peerings = {
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "Shipx",
  "Application Owner" = "Shiv Suthar",
  "ENV"               = "NonProd"
}