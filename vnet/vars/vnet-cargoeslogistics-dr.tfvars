subscription_id     = <subscription_id>
resource_group_name = "rg-cargoeslogistics-infra-dr"
name                = "vnet-cargoeslogistics-dr"
address_space       = ["10.2.160.0/19"]
subnets = [
  {
    name             = "snet-logistics-dr"
    address_prefixes = ["10.2.160.0/24"]
    route_table_id   = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-dr/providers/Microsoft.Network/routeTables/rt-cargoeslogistics-dr"
  },
  {
    name             = "snet-aks-dr"
    address_prefixes = ["10.2.164.0/22"]
    route_table_id   = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-dr/providers/Microsoft.Network/routeTables/rt-cargoeslogistics-dr"
  },
  {
    name             = "snet-psqlflexibleserver-dr"
    address_prefixes = ["10.2.161.0/25"]
    route_table_id   = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-dr/providers/Microsoft.Network/routeTables/rt-cargoeslogistics-dr"
    delegation       = "Microsoft.DBforPostgreSQL/flexibleServers"
  }
]
tags = {
  "X-IPAM-RES-ID" : "B8Rzz97N3oyUJ2XQps9zGT"
}
