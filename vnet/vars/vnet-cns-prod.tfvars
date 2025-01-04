subscription_id     = <subscription_id>
resource_group_name = "rg-cns-infra-prod"
name                = "vnet-cns-prod"
use_ipam            = true
vnet_mask           = 20
subnets = [
  { name = "snet-cnsprod", snet_mask = 23 },
  { name = "snet-cnsprod-green", snet_mask = 23 },
  { name = "snet-common", snet_mask = 25 },
  { name = "snet-internallb", snet_mask = 25 },
  { name = "snet-mysql-flexi", snet_mask = 27 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV",
  "Application Name" : "CCS-CNS",
}