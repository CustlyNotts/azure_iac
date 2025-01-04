subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-infra"
name                = "vnet-cargoesflow-dev"
address_space       = ["10.243.0.0/19"]
subnets = [
  {
    name             = "snet-aksnode-dev"
    address_prefixes = ["10.243.8.0/23"]
    route_table_id   = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-flow-aks-dev"
  },
  {
    name              = "snet-nonaks-dev"
    address_prefixes  = ["10.243.12.0/22"]
    service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dev"
  },
  {
    name              = "snet-functionapp-staging"
    address_prefixes  = ["10.243.10.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dev"
    delegation        = "Microsoft.Web/serverFarms"
  },
  {
    name             = "snet-avd-techM"
    address_prefixes = ["10.243.11.0/28"]
    route_table_id   = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-avd-techM/providers/Microsoft.Network/routeTables/rt-avd-techM"
  },
  {
    name             = "snet-akspod-dev"
    address_prefixes = ["10.243.0.0/21"]
    route_table_id   = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-flow-aks-dev"
  },
  {
    name              = "snet-cleganefunctionapp-staging"
    address_prefixes  = ["10.243.16.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.Web/serverFarms"
  },
  {
    name              = "snet-cargoesflowfunctions-staging"
    address_prefixes  = ["10.243.18.32/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.Web/serverFarms"
  },


  {
    name              = "snet-postgres-flex-nonprod"
    address_prefixes  = ["10.243.10.32/27"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dev"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },

  {
    name              = "snet-cargoesflow-flexible-perf"
    address_prefixes  = ["10.243.17.0/27"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dev"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },

]

peerings = {
  peer-techMAVD-storagevnet = {
    remote_virtual_network_id = "/subscriptions/ddd9f6d6-f88f-4023-b919-baabce24ed59/resourceGroups/rg-netapps-prod/providers/Microsoft.Network/virtualNetworks/Vnet-NetApps-Prod"
  }
  peering_CargoesFlowDev_to_AzureAPIMnonprod_ = {
    remote_virtual_network_id = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-NonProd/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-apim-nonprod"
  }
}