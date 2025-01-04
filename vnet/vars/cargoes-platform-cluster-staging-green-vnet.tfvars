subscription_id     = <subscription_id>
resource_group_name = "cargoes-staging"
name                = "cargoes-platform-cluster-staging-green-vnet"
use_ipam            = true
vnet_mask           = 20
subnets = [
  { name = "cargoes-platform-cluster-staging-green-subnet-1", snet_mask = 21, route_table_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/routeTables/route-table-cargoes-staging-green", service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"] },
  { 
    name = "cargoes-platform-cluster-staging-green-subnet-2", snet_mask = 21,
    route_table_id   = "subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/routeTables/route-table-cargoes-staging-green", service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
     }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "STAGING",
  "Application Name" : "Cargoes Platform",
}