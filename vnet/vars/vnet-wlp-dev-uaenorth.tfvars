subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-dev"
name                = "vnet-wlp-dev-uaenorth"
address_space       = ["10.233.80.0/20"]
subnets = [
  {
    name                      = "snet-wlp-dev-bastion-uaenorth"
    address_prefixes          = ["10.233.85.32/28"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-bastion-wlp"
  },
  {
    name                      = "snet-wlp-dev-lb-uaenorth"
    address_prefixes          = ["10.233.84.0/24"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-lb-wlp"
  },
  {
    name                      = "snet-wlp-dev-native-uaenorth"
    address_prefixes          = ["10.233.85.0/27"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-native-wlp"
  },
  {
    name              = "snet-wlp-dev-aks-uaenorth"
    address_prefixes  = ["10.233.80.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Storage"]
  }
]