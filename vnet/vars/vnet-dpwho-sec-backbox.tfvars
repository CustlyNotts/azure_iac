subscription_id     = <subscription_id>
resource_group_name = "rg-dpwho-sec-backbox"
name                = "vnet-dpwho-sec-backbox"
use_ipam            = true
vnet_mask           = 29
subnets = [
  {
    name      = "snet-dpwho-sec-backbox"
    snet_mask = 29
    #route_table_id    = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/routeTables/rt-wms-nonprod"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
