subscription_id     = <subscription_id>
resource_group_name = "rg-hoappinfra-nonprod"
name                = "vnet-global-nonprod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  {
    name = "snet-global-dev", 
    snet_mask = 27,
    route_table_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-hoappinfra-nonprod/providers/Microsoft.Network/routeTables/route-global-dev",
    network_security_group_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-hoappinfra-nonprod/providers/Microsoft.Network/networkSecurityGroups/nsg-global-dev"
  },
  { 
    name = "snet-global-uat", 
    snet_mask = 27,
    route_table_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-hoappinfra-nonprod/providers/Microsoft.Network/routeTables/route-global-uat",
    network_security_group_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-hoappinfra-nonprod/providers/Microsoft.Network/networkSecurityGroups/nsg-global-uat"
  },
   { 
    name = "snet-mysql-allewan-flex-dev", 
    snet_mask = 27
  }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Mohamed Nowphal",
  "ENV" : "Non Prod",
  "Application Name" : "Ho Apps"
}