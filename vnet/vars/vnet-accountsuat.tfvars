subscription_id     = <subscription_id>
resource_group_name = "rg-accountsuat"
name                = "vnet-accountsuat"
address_space       = ["172.16.32.0/22", "172.16.36.0/28", "172.16.37.0/27"]
subnets = [
  {
    name              = "snet-accountsuat"
    address_prefixes  = ["172.16.32.0/22"]
    service_endpoints = ["Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/routeTables/route-accountsuat"
  },
  {
    name             = "snet-common-flex"
    address_prefixes = ["172.16.37.0/27"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/routeTables/route-accountsuat"
    delegation       = "Microsoft.DBforMySQL/flexibleServers"
  },
  {
    name             = "snet-internallb"
    address_prefixes = ["172.16.36.0/28"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/routeTables/route-accountsuat"
  }
]