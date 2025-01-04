subscription_id     = <subscription_id>
resource_group_name = "rg-dpwipamtest"
name                = "dpwipamtest"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-test1", snet_mask = 25 },
  { name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "ENV" : "TESTING"
}