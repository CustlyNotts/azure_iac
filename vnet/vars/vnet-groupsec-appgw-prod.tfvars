subscription_id     = <subscription_id>
resource_group_name = "rg-groupsec-infra-prod"
name                = "vnet-groupsec-appgw-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-groupsec-appgw-prod", snet_mask = 25 },
  { name = "snet-groupsec-appgwnew-prod", snet_mask = 25 },
  #{ name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.

tags = {
  "Application Owner" : "Gagandeep Singh",
  "ENV" : "PROD",
  "Application Name" : "Application Gateway",
  "RITM" : "RITM0110213"
}