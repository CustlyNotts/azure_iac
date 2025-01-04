subscription_id     = <subscription_id>
resource_group_name = "rg-cargoeslogisticsdev-infra"
name                = "vnet-cargoesLogisitics_dev"
address_space       = ["10.242.0.0/19"]
subnets = [
  {
    name             = "snet-elasticsearch-test"
    address_prefixes = ["10.242.2.0/25"]
    route_table_id   = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/routeTables/rt-elasticsearch-test"
  },
  {
    name                      = "snet-nonprod-dev"
    address_prefixes          = ["10.242.0.0/23"]
    service_endpoints         = ["Microsoft.AzureCosmosDB", "Microsoft.Sql"]
    route_table_id            = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/routeTables/rt-nonprod-dev"
    network_security_group_id = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/networkSecurityGroups/nsg-cargoeslogistics-dev"
  },
  {
    name              = "snet-aks-dev"
    address_prefixes  = ["10.242.16.0/20"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/routeTables/rt-cargoeslogisticsaks-dev"
  }
]