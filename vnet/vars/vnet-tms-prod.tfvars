subscription_id     = <subscription_id>
resource_group_name = "rg-tms-prod-infra"
name                = "vnet-tms-prod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  { name = "snet-tms-prod-mysql", snet_mask = 26, delegation = "Microsoft.DBforMySQL/flexibleServers" },
  { name = "snet-tms-prod", snet_mask = 23 },
  { name = "snet-tms-prod-aks", snet_mask = 20 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Shiv Suthar",
  "ENV" : "Prod",
  "Application Name" : "Transportation Management System",
}