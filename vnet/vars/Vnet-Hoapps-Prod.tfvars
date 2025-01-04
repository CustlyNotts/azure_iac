subscription_id     = <subscription_id>
resource_group_name = "Rg-Hoapps-Prod"
name                = "Vnet-Hoapps-Prod"
address_space       = ["10.239.0.0/16"]
subnets = [
  {
    name              = "Snet-hoapps-aks-prod"
    address_prefixes  = ["10.239.0.0/19"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rg-Hoapps-Prod/providers/Microsoft.Network/routeTables/Route-Hoapps-Prod"
  },
  {
    name              = "Snet-internallb"
    address_prefixes  = ["10.239.32.0/27"]
    service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
    route_table_id    = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rg-Hoapps-Prod/providers/Microsoft.Network/routeTables/Route-Hoapps-Prod"
  },
  {
    name              = "Snet-prvtlnk"
    address_prefixes  = ["10.239.33.0/25"]
    service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
    route_table_id    = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rg-Hoapps-Prod/providers/Microsoft.Network/routeTables/Route-Hoapps-Prod"
  },
  {
    name             = "snet-mysqlflexserver-prvtlnk"
    address_prefixes = ["10.239.34.0/28"]
    route_table_id   = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rg-Hoapps-Prod/providers/Microsoft.Network/routeTables/Route-Hoapps-Prod"
    delegation       = "Microsoft.DBforMySQL/flexibleServers"
  }
]