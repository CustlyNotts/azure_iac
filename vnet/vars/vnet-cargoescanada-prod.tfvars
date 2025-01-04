subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescanada-prod"
name                = "vnet-cargoscanada-prod"
address_space       = ["10.210.128.0/20"]
subnets = [
  {
    name              = "snet-cargoesreport-privteendpoint"
    address_prefixes  = ["10.210.138.0/27"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.210.136.0/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/routeTables/Route-CargoesCanadaProd"
  },
  {
    name              = "snet-cargoestest"
    address_prefixes  = ["10.210.139.0/27"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/routeTables/Route-Cargoescanadacpm-test"
  },
  {
    name                      = "snet-cargoscanada-prod"
    address_prefixes          = ["10.210.128.0/21"]
    service_endpoints         = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/routeTables/Route-CargoesCanadaProd"
    network_security_group_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/networkSecurityGroups/nsg-cargoes-canada-prod"
  },
  {
    name                      = "snet-cargoesreportprod"
    address_prefixes          = ["10.210.137.0/26"]
    service_endpoints         = ["Microsoft.ServiceBus"]
    route_table_id            = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/routeTables/route-cargoesreport-prod"
    network_security_group_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/networkSecurityGroups/nsg-cargoes-canada-prod"
  }
]

peerings = {
  build-aks-prod = {
    remote_virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}