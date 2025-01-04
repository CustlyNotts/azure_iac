subscription_id     = <subscription_id>
resource_group_name = "rg-infra-nonprod"
name                = "vnet-sailpoint-nonprod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-sailpoint-dev", snet_mask = 27 },
  { name = "snet-sailpoint-uat", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Gagandeep Singh",
  "ENV" : "Dev",
  "Application Name" : "Sailpoint",
  "RITM" : "RITM0092748"
}