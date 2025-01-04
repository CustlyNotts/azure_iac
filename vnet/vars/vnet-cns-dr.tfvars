subscription_id     = <subscription_id>
resource_group_name = "rg-cns-infra-dr"
name                = "vnet-cns-dr"
use_ipam            = true
vnet_mask           = 20
subnets = [
  { name = "snet-cnsprod-dr", snet_mask = 23 },
  { name = "snet-cnsprod-green-dr", snet_mask = 23 },
  { name = "snet-common-dr", snet_mask = 25 },
  { name = "snet-internallb-dr", snet_mask = 25 },
  { name = "snet-mysql-flexi-dr", snet_mask = 27 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR",
  "Application Name" : "CCS-CNS",
}