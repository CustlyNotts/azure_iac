subscription_id     = <subscription_id>
resource_group_name = "rg-hoappsuat"
name                = "vnet-hoappsuat"
address_space       = ["10.234.0.0/16"]
subnets = [
  {
    name              = "snet-hoappsuat"
    address_prefixes  = ["10.234.0.0/16"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-hoappsuat/providers/Microsoft.Network/routeTables/Route-Hoapps-Uat"
  }
]