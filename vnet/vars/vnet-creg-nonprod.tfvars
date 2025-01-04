subscription_id     = <subscription_id>
resource_group_name = "rg-creg-dev"
name                = "vnet-creg-nonprod"
use_ipam            = true
vnet_mask           = 16
subnets = [
  { name = "snet-akscreg", snet_mask = 21 },
  { name = "snet-internallb", snet_mask = 25 },

]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Rohit",
  "ENV" : "DEV",
  "Application Name" : "Accounts",
}