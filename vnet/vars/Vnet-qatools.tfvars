subscription_id     = <subscription_id>
resource_group_name = "rg-qatools"
name                = "Vnet-qatools"
address_space       = ["10.213.0.0/16"]
subnets = [
  {
    name             = "snet-qatools-dev"
    address_prefixes = ["10.213.8.0/25"]
    route_table_id   = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/routeTables/rt-qatools1"
  },
  {
    name             = "snet-aksqatest"
    address_prefixes = ["10.213.24.0/21"]
    route_table_id   = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/routeTables/route-akstest"
  },
  {
    name              = "snet-qatools02-node"
    address_prefixes  = ["10.213.8.128/25"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
  },
  {
    name             = "snet-qatools-prod"
    address_prefixes = ["10.213.9.0/24"]
    route_table_id   = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/routeTables/rt-qatools1"
  },
  {
    name              = "snet-qatools02-pod"
    address_prefixes  = ["10.213.12.0/22"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
  },
  {
    name             = "sub-akscluster"
    address_prefixes = ["10.213.0.0/21"]
    route_table_id   = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/routeTables/rt-qatools1"
  },
  {
    name             = "snet-performancetesting"
    address_prefixes = ["10.213.10.0/25"]
    route_table_id   = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/routeTables/rt-qatools1"
  }
]