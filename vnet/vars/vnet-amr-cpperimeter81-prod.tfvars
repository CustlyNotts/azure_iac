subscription_id     = <subscription_id>
resource_group_name = "RG-AMR-CP-Perimeter81"
name                = "vnet-amr-cpperimeter81-prod"
address_space       = ["10.205.8.16/28"]
subnets = [
  {
    name              = "snet-amr-cpperimeter81-prod"
    address_prefixes  = ["10.205.8.16/28"]
    service_endpoints = ["Microsoft.KeyVault"]
  }
]
