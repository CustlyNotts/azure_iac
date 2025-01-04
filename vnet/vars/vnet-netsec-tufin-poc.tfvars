subscription_id     = <subscription_id>
resource_group_name = "rg-netsec-tool-poc"
name                = "vnet-netsec-tufin-poc"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-netsec-tufin-poc", snet_mask = 24,}
]
#create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Kiran Sivaraman",
  "ENV" : "POC",
  "Application Name" : "NetSec Tufin",
}