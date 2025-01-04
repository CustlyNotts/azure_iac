subscription_id     = <subscription_id>
resource_group_name = "rg-tnt-prod"
name                = "vnet-tnt-prod"
use_ipam            = true
vnet_mask           = 22
subnets = [
  { name = "snet-tnt-prod-psql", snet_mask = 24, delegation = "Microsoft.DBforPostgreSQL/flexibleServers" },
  { name = "snet-tnt-prod-app", snet_mask = 24, delegation = "Microsoft.Web/serverFarms" },
  { name = "snet-tnt-prod-kv", snet_mask = 24 },
  { name = "snet-tnt-prod-pdz", snet_mask = 24 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Shaytel Patel",
  "ENV" : "PROD",
  "Application Name" : "ARMS",
  "Created By" : "Ayodele Orebe"
}