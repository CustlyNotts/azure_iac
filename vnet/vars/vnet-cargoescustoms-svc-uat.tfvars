subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescustoms-svc-infra-uat"
name                = "vnet-cargoescustoms-svc-uat"
address_space       = ["10.146.96.0/19"]
subnets = [
  {
    name              = "snet-aks-cargoescustoms-svc-uat"
    address_prefixes  = ["10.146.96.0/21"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-uat/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-uat"
  },
  {
    name              = "snet-plink-cargoescustoms-svc-uat"
    address_prefixes  = ["10.146.104.64/26"]
    service_endpoints = ["Microsoft.CognitiveServices"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-uat/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-uat"
  },
  {
    name              = "snet-psql-cargoescustoms-svc-uat"
    address_prefixes  = ["10.146.104.0/26"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-uat/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-uat"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  }
]