subscription_id     = <subscription_id>
resource_group_name     = "rg-avd-amr-prod"
name                = "vnet-avd-amr-prod"
use_ipam            = true
vnet_mask           = 27
subnets = [
  { name = "snet-avd-amr-prod", snet_mask = 27 },
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Antoni",
  "ENV" : "AVD",
  "Application Name" : "BA AVD AMR"
  "RITM" : "RITM0096791"
}