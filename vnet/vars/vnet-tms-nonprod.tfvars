subscription_id     = <subscription_id>
resource_group_name = "rg-tms-nonprod-infra"
name                = "vnet-tms-nonprod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  { name = "snet-tms-nonprod-mysql", snet_mask = 26, delegation = "Microsoft.DBforMySQL/flexibleServers" },
  { name = "snet-tms-nonprod", snet_mask = 23 },
  { name = "snet-tms-nonprod-aks", snet_mask = 20 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Shiv Suthar",
  "ENV" : "NonProd",
  "Application Name" : "Transportation Management System",
}