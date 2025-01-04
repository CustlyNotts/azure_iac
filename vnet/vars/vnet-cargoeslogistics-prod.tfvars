subscription_id     = <subscription_id>
resource_group_name = "rg-cargoeslogistics-infra-prod"
name                = "vnet-cargoeslogistics-prod"
address_space       = ["10.242.32.0/19"]
subnets = [
  {
    name              = "snet-logistics-prod"
    address_prefixes  = ["10.242.42.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoeslogistics-prod"
  },
  {
    name              = "snet-aksnode-prod"
    address_prefixes  = ["10.242.40.0/23"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoeslogisticsaks-prod"
  },
  {
    name              = "snet-akspod-prod"
    address_prefixes  = ["10.242.32.0/21"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoeslogisticsaks-prod"
  },
  {
    name              = "snet-psqlflexibleserver-prod"
    address_prefixes  = ["10.242.43.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-prod/providers/Microsoft.Network/routeTables/rt-cargoeslogistics-prod"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  }
]
peerings = {
  vnet-cargoeslogisticsprodnew-cargoeslogisticsprodexisitng = {
    remote_virtual_network_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/Rg-cargoes-logistics-prod/providers/Microsoft.Network/virtualNetworks/Vnet-cargoes-logistics-prod"
  }
}