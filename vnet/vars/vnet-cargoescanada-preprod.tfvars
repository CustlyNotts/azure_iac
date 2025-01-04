subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescanada-preprod"
name                = "vnet-cargoescanada-preprod"
address_space       = ["10.212.0.0/20"]
subnets = [
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.212.8.0/28"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-cargoesreport"
    address_prefixes  = ["10.212.8.16/29"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/routeTables/route-cargoescanada-preprod"
  },
  {
    name              = "snet-cargoes-privateendpoint"
    address_prefixes  = ["10.212.9.0/24"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/routeTables/route-cargoescanada-preprod"
  },
  {
    name              = "snet-cargoescanada-preprod"
    address_prefixes  = ["10.212.0.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/routeTables/route-cargoescanada-preprod"
  },
  {
    name             = "snet-common-flex"
    address_prefixes = ["10.212.10.0/27"]
    delegation       = "Microsoft.DBforPostgreSQL/flexibleServers"
    route_table_id   = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/routeTables/route-cargoescanada-preprod"
  }
]

peerings = {
  peering-build-vnet = {
    remote_virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}