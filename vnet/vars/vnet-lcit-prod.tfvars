subscription_id     = <subscription_id>
resource_group_name = "rg-lcit-infra-prod"
name                = "vnet-lcit-prod"
address_space       = ["10.170.32.0/19"]
subnets = [
  {
    name             = "snet-aksnode-lcit-prod"
    address_prefixes = ["10.170.40.0/24"]
    route_table_id   = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/routeTables/route-aksnode-lcit-prod"
  },
  {
    name             = "snet-akspod-lcit-prod"
    address_prefixes = ["10.170.32.0/21"]
    route_table_id   = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/routeTables/route-akspod-lcit-prod"
  },
  {
    name             = "snet-common"
    address_prefixes = ["10.170.41.0/24"]
    route_table_id   = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/routeTables/route-common-lcit-prod"
  },
  {
    name             = "snet-internallb"
    address_prefixes = ["10.170.42.0/25"]
    route_table_id   = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/routeTables/route-internallb-lcit-prod"
  }
]