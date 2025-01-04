subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp"
name                = "vnet-dga-customsapp-uaenorth"
address_space       = ["10.233.2.0/23", "10.233.8.0/21"]
create_default_peerings = false
subnets = [
  {
    name             = "snet-dgacustomsapp-qa-native-uaenorth"
    address_prefixes = ["10.233.2.16/28"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Network/routeTables/Route-DgaCustimapp"
  },
  {
    name              = "snet-dgacustomsapp-bastion-uaenorth"
    address_prefixes  = ["10.233.2.32/27"]
    #service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Network/routeTables/Route-DgaCustimapp"
  },
  {
      name               = "GatewaySubnet"
      address_prefixes   = ["10.233.3.0/29"]
  },
  {
    name                      = "snet-dgacustomsapp-aks-lb"
    address_prefixes          = ["10.233.12.0/25"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Network/routeTables/Route-DgaCustimapp"
  },
  {
    name              = "snet-dgacustomsapp-aks-uaenorth"
    address_prefixes  = ["10.233.8.0/22"]
    #service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Network/routeTables/Route-DgaCustimapp"
  },
  {
    name              = "snet-dgacustomsapp-dev-native-uaenorth"
    address_prefixes  = ["10.233.2.0/28"]
    #service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Network/routeTables/Route-DgaCustimapp"
  }
]
peerings = {
  Vnetpeering-vnet-dga-customsapp-uaenorth-DGAHUB = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub"
  }
}
