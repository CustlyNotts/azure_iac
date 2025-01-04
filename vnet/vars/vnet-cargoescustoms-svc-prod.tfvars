subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescustoms-svc-infra-prod"
name                = "vnet-cargoescustoms-svc-prod"
address_space       = ["10.146.64.0/19"]
subnets = [
  {
    name              = "snet-aksnode-cargoescustoms-svc-prd"
    address_prefixes  = ["10.146.72.0/23"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod"
  },
  {
    name              = "snet-bastion-cargoescustoms-svc-prd"
    address_prefixes  = ["10.146.74.64/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod-bastion"
  },
  {
    name              = "snet-akspod-cargoescustoms-svc-prd"
    address_prefixes  = ["10.146.64.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod"
  },
  {
    name              = "snet-psql-cargoescustoms-svc-prd"
    address_prefixes  = ["10.146.74.0/26"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-plink-cargoescustoms-svc-prd"
    address_prefixes  = ["10.146.74.96/27"]
    service_endpoints = ["Microsoft.Storage"]
  }
]