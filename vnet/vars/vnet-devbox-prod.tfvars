subscription_id     = <subscription_id>
resource_group_name = "rg-devbox-rd"
name                = "vnet-devbox-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-devbox-prod", snet_mask = 24 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "devbox",
  "Application Owner" : "Global Infra",
  "ENV" : "PROD"
  "RITM" : "RITM00000000"
}
