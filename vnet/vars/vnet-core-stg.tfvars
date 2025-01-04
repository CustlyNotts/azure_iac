subscription_id     = <subscription_id>
resource_group_name = "rg-core-stag"
name                = "vnet-core-stg"
address_space       = ["10.222.240.0/21"]
subnets = [
  {
    name             = "snet-internallb"
    address_prefixes = ["10.222.244.0/28"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-core-stag/providers/Microsoft.Network/routeTables/Route-Core-Stag"
  },
  {
    name              = "snet-pl-corestg"
    address_prefixes  = ["10.222.245.0/24"]
    service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-core-stag/providers/Microsoft.Network/routeTables/Route-Core-Stag"
  },
  {
    name             = "snet-ep-corestg"
    address_prefixes = ["10.222.246.0/27"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-core-stag/providers/Microsoft.Network/routeTables/Route-Core-Stag"
  },
  {
    name              = "snet-core-stg"
    address_prefixes  = ["10.222.240.0/22"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-core-stag/providers/Microsoft.Network/routeTables/Route-Core-Stag"
  }
]
peerings = {
  Vnet-Build = {
    remote_virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}