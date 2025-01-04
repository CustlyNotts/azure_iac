subscription_id     = <subscription_id>
resource_group_name = "rg-mea-infra-nonprod"
name                = "vnet-mea-nonprod"
address_space       = ["10.170.64.0/19"]
subnets = [
  {
    name              = "snet-akspod-mea-test"
    address_prefixes  = ["10.170.64.0/21"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-akspod-mea-test"
  },
  {
    name              = "snet-aksnode-mea-test"
    address_prefixes  = ["10.170.72.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-aksnode-mea-test"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.170.74.0/25"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-internallb-mea-test"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.170.73.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-common-mea-test"
  },
  {
    name              = "snet-aksnode-mea-uat"
    address_prefixes  = ["10.170.75.0/24"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-aksnode-mea-uat"
  },
  {
    name              = "snet-akspod-mea-uat"
    address_prefixes  = ["10.170.80.0/21"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-akspod-mea-uat"
  },
  {
    name              = "snet-common-flex"
    address_prefixes  = ["10.170.76.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/routeTables/Route-common-mea-test"
  },
  {
    name             = "snet-migtest"
    address_prefixes = ["10.170.77.0/27"]
  }
]