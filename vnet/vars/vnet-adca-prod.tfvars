subscription_id     = <subscription_id>
resource_group_name = "rg-adca-prod"
sechub_enabled      = true
route_default       = true
name                = "vnet-adca-prod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-adca-prod", snet_mask = 26 },
  #{ name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Blaise Thomas",
  "ENV" : "PROD",
  "Application Name" : "Active Directory Certificate Authority",
  "RITM" : "RITM0117133"
}