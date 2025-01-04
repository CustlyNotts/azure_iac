subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod"
name                = "vnet-wlp-prod-uaenorth"
address_space       = ["10.233.112.0/20"]
subnets = [
  {
    name              = "snet-wlp-prod-aks-uaenorth"
    address_prefixes  = ["10.233.112.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/routeTables/Route-Wlp-Prod"
  },
  {
    name                      = "snet-wlp-prod-bastion-uaenorth"
    address_prefixes          = ["10.233.117.32/28"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/routeTables/Route-Wlp-Prod"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-bastion-wlp"
  },
  {
    name                      = "snet-wlp-prod-native-uaenorth"
    address_prefixes          = ["10.233.117.0/27"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/routeTables/Route-Wlp-Prod"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-native-wlp"
  },
  {
    name                      = "snet-wlp-prod-lb-uaenorth"
    address_prefixes          = ["10.233.116.0/24"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/routeTables/Route-Wlp-Prod"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-lb-wlp"
  }
]