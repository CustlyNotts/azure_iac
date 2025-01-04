subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesRunner_Vnet_nonprod"
name                = "vnet-cargoesRunnernonprod"
address_space       = ["10.153.224.0/19"]
subnets = [
  {
    name              = "Snet-privatelink"
    address_prefixes  = ["10.153.228.128/27"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_staging/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_Staging"
    delegation        = "Microsoft.Web/serverFarms"
  },
  {
    name              = "Snet-QA"
    address_prefixes  = ["10.153.229.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_qa/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_QA"
  },
  {
    name              = "snet-staging"
    address_prefixes  = ["10.153.228.0/25"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_staging/providers/Microsoft.Network/routeTables/Route-Cargoesrunner_Staging"
  },
  {
    name              = "Snet-AKSnonprod2"
    address_prefixes  = ["10.153.232.0/22"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-postgresDB"
    address_prefixes  = ["10.153.230.0/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/routeTables/rt_cargoesRunnernonprod"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name              = "snet-nonprod"
    address_prefixes  = ["10.153.224.0/22"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/routeTables/rt_cargoesRunnernonprod"
  },
  {
    name              = "snet-psqlmigrate"
    address_prefixes  = ["10.153.230.16/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/routeTables/rt_cargoesRunnernonprod"
  },
  {
    name              = "snet-sftp-klxfer"
    address_prefixes  = ["10.153.228.176/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_dev/providers/Microsoft.Network/routeTables/rt_cargoesRunnernonprodsftp"
  },
  {
    name              = "snet-wvd"
    address_prefixes  = ["10.153.228.160/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_dev/providers/Microsoft.Network/routeTables/Route-CargoesRunnerAVD"
  },
  {
    name             = "Aks2"
    address_prefixes = ["10.153.240.0/20"]
  }
]
peerings = {
  Cargoesrunner-to-Cargoes-platform-cluster-staging-vnet = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet"
  }
  Vnet-cargoesRunnernonprod-to-vnet-AMRsechhub = {
    remote_virtual_network_id = "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-amr-sechub/providers/Microsoft.Network/virtualNetworks/AMR-Vnetsechub"
  }
}