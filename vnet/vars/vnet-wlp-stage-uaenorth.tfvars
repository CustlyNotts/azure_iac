subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-stage"
name                = "vnet-wlp-stage-uaenorth"
address_space       = ["10.233.96.0/20"]
subnets = [
  {
    name                      = "snet-wlp-stage-native-uaenorth"
    address_prefixes          = ["10.233.101.0/27"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-native-wlp"
  },
  {
    name                      = "snet-wlp-stage-lb-uaenorth"
    address_prefixes          = ["10.233.100.0/24"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-lb-wlp"
  },
  {
    name                      = "snet-wlp-stage-bastion-uaenorth"
    address_prefixes          = ["10.233.101.32/28"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-project/providers/Microsoft.Network/routeTables/Routewlp"
    network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-bastion-wlp"
  },
  {
    name              = "snet-wlp-stage-aks-uaenorth"
    address_prefixes  = ["10.233.96.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.Storage"]
  }
]



tags =  {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "STAGING",
        "RITM": "RITM00123"
    }