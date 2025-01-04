subscription_id     = <subscription_id>
resource_group_name = "rg-nsg-testing"
name                = "vnet-nsg-testing"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-01", snet_mask = 25,},
  { name = "snet-02", snet_mask = 25 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kiran Sivaraman",
  "ENV" : "Testing",
  "Application Name" : "Security Team",
}