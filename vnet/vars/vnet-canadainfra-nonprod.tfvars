subscription_id     = <subscription_id>
resource_group_name     = "rg-canadainfra-nonprod"
name                = "vnet-canadainfra-nonprod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-agwwaf-nonprod", snet_mask = 28 },
  ]
tags = {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "NonProd",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0108797"
}