subscription_id     = <subscription_id>
resource_group_name = "rg-aiops-nonprod"
name                = "vnet-aiops-nonprod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  { name = "snet-aiops-nonprod", snet_mask = 28 },
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "som.dutta@dpworld.com",
  "ENV" : "Dev",
  "Application Name" : "AI",
  "RITM" : "RITM000000",
}