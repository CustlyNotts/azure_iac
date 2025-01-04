subscription_id     = <subscription_id>
resource_group_name = "rg-appgw-amr-prod"
sechub_enabled      = true
route_default       = true
name                = "vnet-crs-appgw-amr-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-appgw-prod", snet_mask = 25 },
  #{ name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Application Gateway AMR",
  "Application Owner" : "Hassan Malik",
  "ENV" : "PROD",
  "RITM" : "RITM0115555"
}