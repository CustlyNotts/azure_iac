subscription_id     = <subscription_id>
resource_group_name = "rg-sailpoint-infra-prod"
name                = "vnet-sailpoint-prod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-sailpoint-prod" 
    snet_mask = 27
    route_table_id    = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-sailpoint-infra-prod/providers/Microsoft.Network/routeTables/route-sailpoint-prod"
  },
  #{ name = "snet-sailpoint-uat", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Gagandeep Singh",
  "ENV" : "PROD",
  "Application Name" : "Sailpoint",
  "RITM" : "RITM0103773"
}