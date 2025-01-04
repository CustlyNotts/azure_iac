subscription_id     = <subscription_id>
resource_group_name     = "rg-devbox-yms"
name                = "vnet-devbox-yms-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  {
    name      = "snet-devbox-yms"
    snet_mask = 24
    route_table_id    = "/subscriptions/68c2b4c8-f3ac-4455-8af4-e88c3f9ebad6/resourceGroups/rg-devbox-yms/providers/Microsoft.Network/routeTables/Route-devbox-yms"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "devbox yms",
  "Application Owner" : "shaikh.faizan@dpworld.com",
  "ENV" : "PROD"
  "RITM" : "RITM00000000"
}