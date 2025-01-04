subscription_id     = <subscription_id>
resource_group_name = "rg-sco-integration-infra-nonprod"
name                = "vnet-sco-integration-nonprod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  { name = "snet-sco-banking-agent-uat", snet_mask = 25 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Premjith Nair",
  "ENV" : "UAT",
  "Application Name" : "SCO Fusion to Bank Integration",
  "RITM" : "RITM0068997"
}