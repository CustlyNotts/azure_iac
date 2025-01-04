subscription_id     = <subscription_id>
resource_group_name = "rg-cargoscanada-test"
name                = "vnet-cargoescanada-test"
address_space       = ["10.222.248.0/21"]
subnets = [
  {
    name             = "snet-internallb"
    address_prefixes = ["10.222.252.0/28"]
    route_table_id   = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/routeTables/Route-CargoesCanadatest"
  },
  {
    name              = "snet-cargoereport"
    address_prefixes  = ["10.222.253.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/routeTables/route-cargoesreport-test"
  },
  {
    name              = "snet-cargoes-privateendpoint"
    address_prefixes  = ["10.222.253.128/26"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/routeTables/route-cargoesreport-test"
  },
  {
    name             = "snet-perftest"
    address_prefixes = ["10.222.254.0/28"]
    route_table_id   = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-perftest/providers/Microsoft.Network/routeTables/Route-perftest"
  },
  {
    name             = "snet-SecAudit"
    address_prefixes = ["10.222.255.0/28"]
    route_table_id   = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-security-audit-temp-CA/providers/Microsoft.Network/routeTables/rt-securityaudit-ca"
  },
  {
    name              = "snet-core-stg"
    address_prefixes  = ["10.222.248.0/22"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/routeTables/Route-CargoesCanadatest"
  }
]

peerings = {
  checkpoint-canada-build = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  aks = {
    remote_virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
  appgw-nw-peering = {
    remote_virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahubstaging/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadahubnw"
  }
}