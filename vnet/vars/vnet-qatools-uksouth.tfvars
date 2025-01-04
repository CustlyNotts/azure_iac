subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesperformancetestuk"
name                = "vnet-qatools-uksouth"
location            = "uksouth"
use_ipam            = true
vnet_mask           = 25
subnets = [
  {
    name      = "snet-qatools-nonprod"
    snet_mask = 26
    route_table_id    = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-cargoesperformancetesting/providers/Microsoft.Network/routeTables/rt-qatools-canada"
  },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "qatools",
  "Application Owner" : "Ritesh/Abhishekjain1",
  "ENV" : "NonProd"
  "RITM" : "RITM0101342"
}