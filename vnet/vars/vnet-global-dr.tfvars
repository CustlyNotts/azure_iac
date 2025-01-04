subscription_id     = <subscription_id>
resource_group_name = "rg-global-infra-dr"
name                = "vnet-global-dr"
use_ipam            = true
vnet_mask           = 16
subnets = [
  { name = "snet-global-dr", snet_mask = 21 },
  { name = "snet-internallb-dr", snet_mask = 25 },
  { name = "snet-commonflex-dr", snet_mask = 28 },
  { name = "snet-common-dr", snet_mask = 25 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Daneil",
  "ENV" : "DR",
  "Application Name" : "Global DR",
  "RITM" : "RITM0072365"
}
