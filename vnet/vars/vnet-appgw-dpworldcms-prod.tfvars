subscription_id     = <subscription_id>
resource_group_name = "rg-dpworldcms-prod-infra"
name                = "vnet-appgw-dpworldcms-prod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-appgw-dpworldcms-prod"
    snet_mask = 28
  }
]

peerings = {
  peer-vnet-appgw-to-vnet-dpworldcms-nonprod = {
    remote_virtual_network_id = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-dpworldcms-prod"
  }
}

create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name"  = "Dpworld CMS",
  "Application Owner" = "Bilal Adham",
  "ENV"               = "Prod"
}