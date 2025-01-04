subscription_id     = <subscription_id>
resource_group_name = "rg-dpworldcms-prod-infra"
name                = "vnet-dpworldcms-prod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  {
    name      = "snet-dpworld-prod"
    snet_mask = 24
    route_table_id    = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-prod-infra/providers/Microsoft.Network/routeTables/rt-dpworldcms-prod"
  },
    {
    name      = "snet-dpworld-prod-aks"
    snet_mask = 21
    route_table_id    = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-prod-infra/providers/Microsoft.Network/routeTables/rt-dpworldcms-prod"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Dpworld CMS",
  "Application Owner" : "Bilal Adham",
  "ENV" : "Prod"
  "RITM" : "RITM0012345"
}