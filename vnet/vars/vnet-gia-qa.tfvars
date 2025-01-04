subscription_id     = <subscription_id>
resource_group_name = "rg-gia-qa"
name                = "vnet-gia-qa"
use_ipam            = true
vnet_mask           = 22
subnets = [
  { name = "snet-gia-qa-psql", snet_mask = 24, delegation = "Microsoft.DBforPostgreSQL/flexibleServers" },
  { name = "snet-gia-qa-app", snet_mask = 24, delegation = "Microsoft.Web/serverFarms" },
  { name = "snet-gia-qa-kv", snet_mask = 24 },
  { name = "snet-gia-qa-pdz", snet_mask = 24 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Shaytel Patel",
  "ENV" : "QA",
  "Application Name" : "GIA",
  "Created By" : "Ayodele Orebe"
}