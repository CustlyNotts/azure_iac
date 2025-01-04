subscription_id     = <subscription_id>
resource_group_name = "rg-dpworldcms-nonprod-infra"
name                = "vnet-dpworldcms-nonprod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  {
    name      = "snet-dpworld-nonprod"
    snet_mask = 24
    route_table_id    = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-nonprod-infra/providers/Microsoft.Network/routeTables/rt-dpworldcms-nonprod"
  },
    {
    name      = "snet-dpworld-nonprod-aks"
    snet_mask = 21
    route_table_id    = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-nonprod-infra/providers/Microsoft.Network/routeTables/rt-dpworldcms-nonprod"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Dpworld CMS",
  "Application Owner" : "Bilal Adham",
  "ENV" : "NonProd"
  "RITM" : "RITM0012345"
}