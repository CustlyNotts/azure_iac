subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescustoms-infra-dev"
name                = "vnet-cargoescustoms-dev"
address_space       = ["10.146.0.0/21"]
subnets = [
  {
    name              = "snet-FormRecognizer-dev"
    address_prefixes  = ["10.146.3.80/28"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
  },
  {
    name              = "snet-Pl-cargoes-customs-dev"
    address_prefixes  = ["10.146.3.0/27"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
  },
  {
    name              = "snet-aksnode-cargoes-customs-stg"
    address_prefixes  = ["10.146.6.0/24"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-stg"
  },
  {
    name              = "snet-bastion-cargoes-customs"
    address_prefixes  = ["10.146.3.64/28"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
  },
  {
    name              = "snet-akspod-cargoes-customs-dev"
    address_prefixes  = ["10.146.0.0/23"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
  },
  {
    name              = "snet-lb-cargoes-customs-stg"
    address_prefixes  = ["10.146.7.16/28"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
  },
  {
    name              = "snet-akspod-cargoes-customs-stg"
    address_prefixes  = ["10.146.4.0/23"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-stg"
  },
  {
    name              = "snet-psql-cargoes-customs-dev"
    address_prefixes  = ["10.146.3.32/27"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-aksnode-cargoes-customs-dev"
    address_prefixes  = ["10.146.2.0/24"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/routeTables/rt-cargoescustoms-dev"
  },
  {
    name              = "snet-lb-cargoes-customs-dev"
    address_prefixes  = ["10.146.7.0/28"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
  }
]