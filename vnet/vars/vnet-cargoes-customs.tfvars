subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-app"
name                = "vnet-cargoes-customs"
address_space       = ["10.155.0.0/16"]
subnets = [
  {
    name             = "snet-lb-cargoes-customs-dev"
    address_prefixes = ["10.155.8.32/28"]
  },
  {
    name             = "snet-aks-cargoes-customs-dev"
    address_prefixes = ["10.155.16.0/21"]
  },
  {
    name              = "snet-lb-cargoes-customs-stg"
    address_prefixes  = ["10.155.8.16/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/routeTables/Route-cargoes-customs-stg"
  },
  {
    name              = "snet-bastion-cargoes-customs"
    address_prefixes  = ["10.155.8.0/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/routeTables/Route-cargoes-customs-bastion"
  },
  {
    name              = "snet-aks-cargoes-customs-stg"
    address_prefixes  = ["10.155.0.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/routeTables/Route-cargoes-customs-stg"
  }
]