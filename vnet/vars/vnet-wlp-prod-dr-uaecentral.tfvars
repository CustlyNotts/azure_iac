subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod-dr"
name                = "vnet-wlp-prod-dr-uaecentral"
address_space       = ["10.233.128.0/20"]
subnets = [
  {
    name              = "snet-wlp-prod-dr-native-uaecentral"
    address_prefixes  = ["10.233.133.0/27"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/routeTables/Route-wlp-prod-dr-uaecentral"
  },
  {
    name             = "snet-wlp-prod-dr-lb-uaecentral"
    address_prefixes = ["10.233.132.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/routeTables/Route-wlp-prod-dr-uaecentral"
  },
  {
    name              = "snet-wlp-prod-dr-bastion-uaecentral"
    address_prefixes  = ["10.233.133.32/28"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/routeTables/Route-wlp-prod-dr-uaecentral"
  },
  {
    name             = "snet-wlp-prod-dr-appgw-uaecentral"
    address_prefixes = ["10.233.133.48/28"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-wlp-prod-dr-aks-uaecentral"
    address_prefixes  = ["10.233.128.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Sql", "Microsoft.Storage"]
  }
]