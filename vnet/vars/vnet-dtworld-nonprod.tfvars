subscription_id     = <subscription_id>
resource_group_name = "rg-network-nonprod"
name                = "vnet-dtworld-nonprod"
address_space       = ["10.167.0.0/16"]
subnets = [
  {
    name             = "snet-mea-test"
    address_prefixes = ["10.167.0.0/21"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-network-nonprod/providers/Microsoft.Network/routeTables/Route-meatest"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.167.8.0/27"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-network-nonprod/providers/Microsoft.Network/routeTables/Route-meatest"
  }
]
peerings = {
  Vnet-dtwnonprod-to-sechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
}
create_default_peerings = false
