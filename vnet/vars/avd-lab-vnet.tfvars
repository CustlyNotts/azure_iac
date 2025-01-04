subscription_id     = <subscription_id>
resource_group_name = "avd-lab"
sechub_enabled      = true
route_default       = true
name                = "avd-lab-vnet"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-lab", snet_mask = 26 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "AVD LAB",
  "Application Owner" : "irshad.azadmin",
  "ENV" : "LAB"
}