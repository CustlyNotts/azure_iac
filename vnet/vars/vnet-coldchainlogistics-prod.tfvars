subscription_id     = <subscription_id>
resource_group_name = "rg-coldchainlogistics-prod"
sechub_enabled      = true
route_default       = true
name                = "vnet-coldchainlogistics-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-prod", snet_mask = 26 },
  { name = "snet-commoninfra", snet_mask = 26 },
  { name = "snet-uat", snet_mask = 26 },
  { name = "snet-misc", snet_mask = 26 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "DPW SCO India",
  "Application Owner" : "Smit Gohel",
  "ENV" : "PROD",
  "RITM" : "RITM0114072"
}