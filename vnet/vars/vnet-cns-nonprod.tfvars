subscription_id     = <subscription_id>
resource_group_name = "rg-cns-infra-nonprod"
name                = "vnet-cns-nonprod"
use_ipam            = true
vnet_mask           = 18
subnets = [
  { name = "snet-cnspreprod", snet_mask = 23 },
  { name = "snet-cnspreprod-green", snet_mask = 23 },
  { name = "snet-cnsuat", snet_mask = 23 },
  { name = "snet-cnsdev", snet_mask = 23 },
  { name = "snet-cnstest", snet_mask = 23 },
  { name = "snet-common", snet_mask = 25 },
  { name = "snet-internallb", snet_mask = 25 },
  { name = "snet-mysql-flexi", snet_mask = 26 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV",
  "Application Name" : "CCS-CNS",
}