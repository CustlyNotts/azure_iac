subscription_id     = <subscription_id>
resource_group_name = "rg-valarian-poc"
name                = "vnet-valarian-poc"
use_ipam            = true
vnet_mask           = 27
subnets = [
  {
    name      = "snet-valarian-poc"
    snet_mask = 28
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
   "Application Name" : "Valarian",
  "Application Owner" : "Muhammad Tariq / Appas Muthalif",
  "ENV" : "POC",
  "RITM" : "RITM0107182"
}