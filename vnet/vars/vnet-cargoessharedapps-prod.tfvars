subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesprod-SharedInfra-prod"
name                = "vnet-cargoessharedapps-prod"
address_space       = ["10.240.192.0/19"]
subnets = [
  {
    name             = "snetakspod"
    address_prefixes = ["10.240.192.0/21"]
    service_endpoints = ["Microsoft.Storage.Global"]
    route_table_id   = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/routeTables/rt-cargoessharedaks-prod"
  },
  {
    name             = "snetnonaks"
    address_prefixes = ["10.240.202.0/23"]
    service_endpoints = ["Microsoft.Storage.Global"]
    route_table_id   = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/routeTables/rt-cargoesshared-prod"
  },
  {
    name             = "snetaksgreen"
    address_prefixes = ["10.240.208.0/21"]
    service_endpoints = ["Microsoft.Storage.Global"]
    route_table_id   = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/routeTables/rt-cargoessharedaks-prod"
  }
]