subscription_id     = <subscription_id>
resource_group_name = "rg-dms-prod"
name                = "vnet-dms-prod"
use_ipam            = true
vnet_mask           = 26
subnets = [
  { name = "snet-dms-prod", snet_mask = 28 , service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"] , delegation = "Microsoft.Web/serverFarms"},
  { name = "snet-dms-db-prod", snet_mask = 28 , service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]}
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kapil/Rhoderick",
  "ENV" : "PROD",
  "Application Name" : "DMS",
}
