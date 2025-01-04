subscription_id     = <subscription_id>
resource_group_name = "rg-dpweduportal-prod"
name                = "vnet-dpweduportal-prod"
use_ipam            = true
vnet_mask           = 23
subnets = [
  { name = "snet-dpweduportal", snet_mask = 24 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "EducationPortal",
  "Application Owner" = "Victoria.Bowden@dpworld.com",
  "ENV"               = "PROD"
}