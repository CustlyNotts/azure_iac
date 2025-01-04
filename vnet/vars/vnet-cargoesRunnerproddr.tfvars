subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesRunner_proddr"
name                = "vnet-cargoesRunnerproddr"
address_space       = ["10.7.112.0/20"]
subnets = [
  {
    name              = "snet-sharedsvc-proddr"
    address_prefixes  = ["10.7.120.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
  },
  {
    name              = "snet-AKSdr"
    address_prefixes  = ["10.7.112.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
  },
  {
    name              = "snet-sagerunner-proddr"
    address_prefixes  = ["10.7.120.128/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
  },
  {
    name              = "snet-psqlmigratedr"
    address_prefixes  = ["10.7.120.160/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-postgresDBdr"
    address_prefixes  = ["10.7.120.192/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-sftp-klxferdr"
    address_prefixes  = ["10.7.120.224/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
  },
  {
    name              = "snet-psql-orchestrator-proddr"
    address_prefixes  = ["10.7.120.240/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_proddr/providers/Microsoft.Network/routeTables/rt-CargoesRunner-Proddr"
  }
]