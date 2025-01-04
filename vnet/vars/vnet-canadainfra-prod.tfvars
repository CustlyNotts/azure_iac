subscription_id     = <subscription_id>
resource_group_name     = "rg-canadainfra-prod"
name                = "vnet-canadainfra-prod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-agwwaf-prod", snet_mask = 28 },
  ]
tags = {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "PROD",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0108797"
}