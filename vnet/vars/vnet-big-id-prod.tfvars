subscription_id     = <subscription_id>
resource_group_name = "rg-bigid-prod"
name                = "vnet-big-id-prod"
use_ipam            = true
vnet_mask           = 22
subnets = [
  { name = "snet-big-id-aks-prod", snet_mask = 23 },
  { name = "snet-big-id-pvtenp-prod", snet_mask = 28 },
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "PROD",
  "Application Name" : "BigID",
  "RITM" : "RITM0093495",
  "X-IPAM-RES-ID" : "XUSJwrQDF6WHYwWCwMcGcC"
}