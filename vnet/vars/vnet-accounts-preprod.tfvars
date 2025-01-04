subscription_id     = <subscription_id>
resource_group_name = "rg-accountspreprod"
name                = "vnet-accounts-preprod"
address_space       = ["10.210.16.0/21"]
subnets = [
  {
    name              = "snet-accounts-s2-preprod"
    address_prefixes  = ["10.210.20.0/23"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/routeTables/Route-Accounts-Preprod"
  },
  {
    name              = "snet-accounts-s1-preprod"
    address_prefixes  = ["10.210.16.0/22"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/routeTables/Route-Accounts-Preprod"
  }
]