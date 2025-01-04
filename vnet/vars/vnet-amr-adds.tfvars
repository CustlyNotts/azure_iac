subscription_id     = <subscription_id>
resource_group_name = "rgadds"
name                = "vnet-amr-adds"
location            = "canadacentral"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-amr-adds", snet_mask = 26
    #route_table_id   = "/subscriptions/4a324d03-e8d9-42a1-845c-182bdcd78347/resourceGroups/rg-mdm-uat/providers/Microsoft.Network/routeTables/rt-mdm-uat"}
    # { name = "snet-test3", snet_mask = 24 
  }
]
#create_default_peerings = true # creation of peerings to harmony connect and sechub in respective azure regions. the default is true.
#tags = {
#  "application owner" : "kumanan archunan",
#  "env" : "prod",
#  "application name" : "mdm",
#  "ritm" : "ritm0067581"
#}
