subscription_id     = <subscription_id>
resource_group_name = "rg-accounts-infra-dr"
name                = "vnet-accounts-dr"
address_space       = ["10.214.0.0/20", "10.215.0.0/20"]
subnets = [
  {
    name             = "snet-akspod-accounts-dr"
    address_prefixes = ["10.214.0.0/21"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/routeTables/Route-akspod-accounts-dr"
  },
  {
    name             = "snet-aksnode-accounts-dr"
    address_prefixes = ["10.214.8.0/24"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/routeTables/Route-aksnode-accounts-dr"
  },
  {
    name             = "snet-common"
    address_prefixes = ["10.214.9.0/24"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/routeTables/Route-common"
  },
  {
    name             = "snet-internallb"
    address_prefixes = ["10.214.10.0/24"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/routeTables/Route-internallb"
  }
]

peerings = {
  Vnetglbsechubdr = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgcheckpointapp-DR-FW/providers/Microsoft.Network/virtualNetworks/VnetSecHubDR"
  }
}