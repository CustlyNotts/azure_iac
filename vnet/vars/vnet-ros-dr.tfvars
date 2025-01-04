subscription_id     = <subscription_id>
resource_group_name = "rg-ros-dr"
name                = "vnet-ros-dr"
use_ipam            = true
vnet_mask           = 19
subnets = [
  {
    name      = "snet-aks-dr"
    snet_mask = 21
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-dr/providers/Microsoft.Network/routeTables/rt-ros-dr"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tresource_group_tags = {
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "DR",
  "RITM" : "RITM0040878"
}