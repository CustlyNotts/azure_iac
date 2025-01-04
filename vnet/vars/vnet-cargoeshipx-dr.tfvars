subscription_id     = <subscription_id>
resource_group_name     = "rg-cargoesshipxdr-infra"
name                = "vnet-cargoesshipx-dr"
use_ipam            = true
vnet_mask           = 21
subnets = [
  { name = "snet-shipxcompute-dr", snet_mask = 24},
  { name = "snet-shipxdatabase-dr", snet_mask = 26},
  { name = "snet-shipx-mysql-dr", snet_mask = 26}
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Shiv Suthar",
  "ENV" : "DR",
  "Application Name" : "Shipx TMS",
  "RITM" : "RITM001234"
}

