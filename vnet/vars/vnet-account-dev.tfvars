subscription_id     = <subscription_id>
resource_group_name = "rg-account-dev"
name                = "vnet-account-dev"
address_space       = ["10.211.16.0/20"]
subnets = [
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.211.24.0/28"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/routeTables/Route-accounts-dev"
  },
  {
    name              = "snet-SecAudit"
    address_prefixes  = ["10.211.25.0/28"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-security-audit-temp-AE/providers/Microsoft.Network/routeTables/rt-secaudit"
  },
  {
    name              = "snet-account-dev"
    address_prefixes  = ["10.211.16.0/21"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/routeTables/Route-accounts-dev"
  },
  {
    name              = "snet-common-flex"
    address_prefixes  = ["10.211.26.0/27"]
    service_endpoints = ["Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/routeTables/Route-accounts-dev"
    delegation        = "Microsoft.DBforMySQL/flexibleServers"
  }
]