subscription_id     = <subscription_id>
resource_group_name = "rg-mdm-infra-nonprod"
name                = "vnet-mdm-nonprod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-mdm-uat", snet_mask = 26
  route_table_id = "/subscriptions/4a324d03-e8d9-42a1-845c-182bdcd78347/resourceGroups/rg-mdm-uat/providers/Microsoft.Network/routeTables/rt-mdm-uat" }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kumanan Archunan",
  "ENV" : "UAT",
  "Application Name" : "MDM UAT",
  "RITM" : "RITM0067581"
}