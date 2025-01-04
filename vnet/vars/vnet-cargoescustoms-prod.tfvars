subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescustoms-infra-prod"
name                = "vnet-cargoescustoms-prod"
address_space       = ["10.146.32.0/19"]
subnets = [
  {
    name              = "snet-akspod-cargoes-customs-prod"
    address_prefixes  = ["10.146.32.0/21"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-prod"
  },
  {
    name              = "snet-aksnode-cargoes-customs-prod"
    address_prefixes  = ["10.146.40.0/23"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-prod"
  },
  {
    name              = "snet-FormRecognizer-prd"
    address_prefixes  = ["10.146.42.32/27"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-prod"
  },
  {
    name              = "snet-psql-cargoes-customs-prd"
    address_prefixes  = ["10.146.42.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-prod"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-Pl-cargoes-customs-prd"
    address_prefixes  = ["10.146.42.64/27"]
    service_endpoints = ["Microsoft.CognitiveServices", "Microsoft.Storage"]
  }
]

peerings = {
  temp-peer-cargoescustomes-DTworld = {
    remote_virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoescustoms-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod"
  }
}