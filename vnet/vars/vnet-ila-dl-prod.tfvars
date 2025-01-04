subscription_id     = <subscription_id>
resource_group_name = "rg-ila-dl-prod"
name                = "vnet-ila-dl-prod"
use_ipam            = true
vnet_mask           = 21
subnets = [
  { name = "snet-ila-dbw-public-snet", snet_mask = 25, delegation = "Microsoft.Databricks/workspaces" },
  { name = "snet-ila-dbw-private-snet", snet_mask = 25, delegation = "Microsoft.Databricks/workspaces" },
  { name = "snet-ila-privateendpoints", snet_mask = 24 },
  { name = "snet-ila-default", snet_mask = 24 },
  { name = "snet-ila-managment", snet_mask = 24 },
  { name = "snet-ila-sqlmi-prod", snet_mask = 24 },
  { name = "snet-ila-sqlmi-dev", snet_mask = 24 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Antoni Sabater",
  "ENV" : "PROD",
  "purpose" : "Migration from ILA",
  "Usage_Description" = "Re engineer and repatriate to CDP",
  "Application Name" : "BA ILA",
  "POC" : "Adele Jansen"
}