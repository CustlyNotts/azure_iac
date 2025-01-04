subscription_id     = <subscription_id>
resource_group_name = "rg-wms-infra-nonprod"
name                = "vnet-wms-nonprod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  {
    name      = "snet-wms-nonprod"
    snet_mask = 24
    route_table_id    = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/routeTables/rt-wms-nonprod"
  },
    {
    name      = "snet-wms-nonprod-aks"
    snet_mask = 21
    route_table_id    = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/routeTables/rt-wms-nonprod"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Warehouse Management System",
  "Application Owner" : "Sandeep Gupta",
  "ENV" : "NonProd"
  "RITM" : "RITM0097856"
}