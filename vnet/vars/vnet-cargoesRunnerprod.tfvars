subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesRunner_Vnet_prod"
name                = "vnet-cargoesRunnerprod"
address_space       = ["10.159.0.0/16"]
subnets = [
  {
    name              = "snet-sharedsvc-prod"
    address_prefixes  = ["10.159.0.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_prod/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_prod"
  },
  {
    name              = "snet-AKS"
    address_prefixes  = ["10.159.8.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_prod/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_prod"
  },
  {
    name              = "snet-sagerunner-prod"
    address_prefixes  = ["10.159.0.128/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_sagerunner_prod/providers/Microsoft.Network/routeTables/Route-sagerunner_prod"
  },
  {
    name              = "snet-psqlmigrate"
    address_prefixes  = ["10.159.0.192/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-postgresDB"
    address_prefixes  = ["10.159.0.160/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_prod/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_prod"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-sftp-klxfer"
    address_prefixes  = ["10.159.0.224/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_prod/providers/Microsoft.Network/routeTables/rt_cargoesRunnerprodsftp"
  }
]