subscription_id     = <subscription_id>
resource_group_name = "rg-lcit-infra-nonprod"
name                = "vnet-lcit-nonprod"
address_space       = ["10.170.0.0/19"]
subnets = [
  {
    name              = "snet-aksnode-lcit-staging"
    address_prefixes  = ["10.170.8.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-nonprod/providers/Microsoft.Network/routeTables/route-aksnode-lcit-staging"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.170.9.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-nonprod/providers/Microsoft.Network/routeTables/route-common-lcit-staging"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.170.10.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-nonprod/providers/Microsoft.Network/routeTables/route-internallb-lcit-staging"
  },
  {
    name              = "snet-akspod-lcit-staging"
    address_prefixes  = ["10.170.0.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-nonprod/providers/Microsoft.Network/routeTables/route-akspod-lcit-staging"
  },
  {
    name              = "snet-common-flex"
    address_prefixes  = ["10.170.11.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-nonprod/providers/Microsoft.Network/routeTables/route-common-lcit-staging"
  }
]