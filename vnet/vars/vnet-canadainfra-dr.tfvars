subscription_id     = <subscription_id>
resource_group_name     = "rg-canadainfra-dr"
name                = "vnet-canadainfra-dr"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-agwwaf-dr", snet_mask = 28 },
  ]
tags = {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "DR",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0108797"
}