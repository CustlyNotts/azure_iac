subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipxprod-infra"
name                = "vnet-cargoesshipx-prod"
address_space       = ["10.2.192.0/21"]
subnets = [
  {
    name             = "snet-shipxcompute-prod"
    address_prefixes = ["10.2.192.0/24"]
    route_table_id   = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-cargoesshipxprod-infra/providers/Microsoft.Network/routeTables/rt-shipx-prod"
  },
  {
    name             = "snet-shipx-mysql-prod"
    address_prefixes = ["10.2.193.0/26"]
    route_table_id   = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-cargoesshipxprod-infra/providers/Microsoft.Network/routeTables/rt-shipx-prod"
  }
]
tags = {
  "X-IPAM-RES-ID" : "EFLG4xsjHWxwAqASiHJoDx"
}