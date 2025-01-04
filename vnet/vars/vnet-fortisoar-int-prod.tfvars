subscription_id     = <subscription_id>
resource_group_name = "rg-fortisoar-prod"
name                = "vnet-fortisoar-int-prod"
use_ipam            = false
address_space       = ["10.48.0.160/27"]
subnets = [
  {
    name              = "snet-fortisoar-int-prod"
    address_prefixes  = ["10.48.0.160/27"]
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kiran/Tariq",
  "ENV" : "PROD",
  "Application Name" : "FortiSOAR",
  "Created By" : "Vel"
}
