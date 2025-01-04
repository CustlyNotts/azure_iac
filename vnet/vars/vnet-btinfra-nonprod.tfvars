subscription_id     = <subscription_id>
resource_group_name     = "rg-btinfra-nonprod"
name                    = "vnet-btinfra-nonprod"
use_ipam                = true
vnet_mask               = 26
#create_default_peerings = false
subnets = [
  { name = "snet-agwwaf-nonprod", snet_mask = 28 },
  ]
tags = {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "NonProd",
  "Application Name" : "CCS-Bharat Trade",
  "RITM" : "RITM0113966"
}