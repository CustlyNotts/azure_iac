subscription_id     = <subscription_id>
resource_group_name = "rg-global-infra-nonprod"
name                = "vnet-global-nonprod"
address_space       = ["10.170.160.0/19"]
subnets = [
  {
    name              = "snet-akspod-global-test"
    address_prefixes  = ["10.170.160.0/21"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/routeTables/Route-akspod-global-nonprod"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.170.170.0/25"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/routeTables/Route-internallb"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.170.169.0/24"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/routeTables/Route-common"
  },
  {
    name              = "snet-aksnode-global-test"
    address_prefixes  = ["10.170.168.0/24"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/routeTables/Route-aksnode-global-nonprod"
  },
  {
    name             = "snet-common-flex"
    address_prefixes = ["10.170.171.0/24"]
    route_table_id   = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/routeTables/Route-common"
    delegation       = "Microsoft.DBforMySQL/flexibleServers"
  },
  {
    name              = "snet-aks-global-uat"
    address_prefixes  = ["10.170.176.0/21"]
    service_endpoints = ["Microsoft.Storage"]
  }

]