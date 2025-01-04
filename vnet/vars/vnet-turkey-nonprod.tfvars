subscription_id     = <subscription_id>
resource_group_name = "rg-turkey-infra-nonprod"
name                = "vnet-turkey-nonprod"
address_space       = ["10.170.128.0/19"]
subnets = [
  {
    name              = "snet-aksnode-turkey-staging"
    address_prefixes  = ["10.170.136.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkey-infra-nonprod/providers/Microsoft.Network/routeTables/Route-aksnode-turkey-staging"
  },
  {
    name              = "snet-akspod-turkey-staging"
    address_prefixes  = ["10.170.128.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkey-infra-nonprod/providers/Microsoft.Network/routeTables/Route-akspod-turkey-staging"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.170.137.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkey-infra-nonprod/providers/Microsoft.Network/routeTables/Route-common-turkey-staging"
  },
  {
    name             = "snet-internallb"
    address_prefixes = ["10.170.138.0/25"]
    route_table_id   = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkey-infra-nonprod/providers/Microsoft.Network/routeTables/Route-internallb-turkey-staging"
  }
]