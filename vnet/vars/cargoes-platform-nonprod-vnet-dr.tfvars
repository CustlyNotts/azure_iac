subscription_id     = <subscription_id>
resource_group_name = "cargoes-staging-dr"
name                = "cargoes-platform-nonprod-vnet-dr"
use_ipam            = true
vnet_mask           = 20
subnets = [
  {
    name      = "cargoes-platform-cluster-staging-dr-subnet-1"
    snet_mask = 21
    route_table_id    = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging-dr/providers/Microsoft.Network/routeTables/route-table-cargoes-staging-dr"
  },
    {
    name      = "cargoes-platform-cluster-staging-subnet-2"
    snet_mask = 24
    route_table_id    = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging-dr/providers/Microsoft.Network/routeTables/route-table-cargoes-staging-dr"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" = "Cargoes Platform Staging"
  "ENV" = "Staging"
  "Application Owner" = "Jay Li/ Jayakrishna Alwar"
}