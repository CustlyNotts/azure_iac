subscription_id     = <subscription_id>
resource_group_name = "rg-devbox-ba"
name                = "vnet-devbox-ba-ea-prod"
use_ipam            = false
address_space       = ["10.237.13.0/24"]
subnets = [
  {
    name             = "snet-devbox-ba-ea-prod"
    address_prefixes = ["10.237.13.0/24"]
    #route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/routeTables/rt-crs-prod"
  }
]
create_default_peerings = true
tags = {
  "Application Owner" : "Antoni Sabater",
  "ENV" : "PROD",
  "Application Name" : "BA DevBox UAE",
  "RITM" : "RITM00000000"
}
