subscription_id     = <subscription_id>
resource_group_name = "rg-dms-nonprod"
name                = "vnet-dms-nonprod"
use_ipam            = true
vnet_mask           = 26
subnets = [
  { name = "snet-dms-dev", snet_mask = 28 , service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"] , delegation = "Microsoft.Web/serverFarms"},
  { name = "snet-dms-uat", snet_mask = 28 , service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"] , delegation = "Microsoft.Web/serverFarms"},
  { name = "snet-dms-db-nonprod", snet_mask = 28 , service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]}
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kapil/Rhoderick",
  "ENV" : "NONPROD",
  "Application Name" : "DMS",
}
