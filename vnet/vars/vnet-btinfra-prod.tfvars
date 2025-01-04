subscription_id     = <subscription_id>
resource_group_name     = "rg-btinfra-prod"
name                    = "vnet-btinfra-prod"
use_ipam                = true
vnet_mask               = 26
#create_default_peerings = false
subnets = [
  { name = "snet-agwwaf-prod", snet_mask = 28 },
  ]
tags = {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "PROD",
  "Application Name" : "CCS-Bharat Trade",
  "RITM" : "RITM000000"
}