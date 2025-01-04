subscription_id     = <subscription_id>
resource_group_name = "rg-identity-uaenorth-prod"
name                = "vnet-identity-uaenorth-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-presolv-inbound-prod", snet_mask = 27},
  { name = "snet-presolv-outbound-prod", snet_mask = 27},
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Identity",
  "Application Owner" : "Global O365 Team",
  "ENV" : "PROD",
  "RITM" : "RITM00000000"
}