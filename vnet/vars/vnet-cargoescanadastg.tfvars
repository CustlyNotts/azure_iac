subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescanadastg"
name                = "vnet-cargoescanadastg"
address_space       = ["10.210.24.0/21"]
subnets = [
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.210.28.0/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/routeTables/Route-CargoesCanadastg"
  },
  {
    name              = "snet-cargoesreportstag"
    address_prefixes  = ["10.210.29.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/routeTables/route-cargoesreport-stg"
  },
  {
    name              = "snet-cargoesprivateendpoint"
    address_prefixes  = ["10.210.30.0/26"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-cargoescanadastg"
    address_prefixes  = ["10.210.24.0/22"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/routeTables/Route-CargoesCanadastg"
  }
]

peerings = {
  build = {
    remote_virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}