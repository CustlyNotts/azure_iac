subscription_id     = <subscription_id>
resource_group_name = "rg-ssadar-infra-prod"
name                = "vnet-ssadar-prod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { 
    name = "snet-ssadar-prod", snet_mask = 27 
    route_table_id   = "/subscriptions/838e01d7-5d0b-4cdb-b7ad-b813642d0533/resourceGroups/rg-ssadar-uat/providers/Microsoft.Network/routeTables/rt-ssadar-uat"
    },
  { 
    name = "snet-psql-ssadar-prod", snet_mask = 27
    route_table_id   = "/subscriptions/838e01d7-5d0b-4cdb-b7ad-b813642d0533/resourceGroups/rg-ssadar-uat/providers/Microsoft.Network/routeTables/rt-ssadar-uat"
     }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "SSA DAR",
  "Application Owner" : "Senthoor Ramasamy",
  "ENV" : "PROD"
  "RITM" : "RITM0090031"
}
