subscription_id     = <subscription_id>
resource_group_name = "RG-UAE-CP-Perimeter81"
name                = "vnet-uae-cpperimeter81-prod"
address_space       = ["10.205.8.0/28"]
subnets = [
  {
    name              = "snet-uae-cpperimeter81-prod"
    address_prefixes  = ["10.205.8.0/28"]
    service_endpoints = ["Microsoft.KeyVault"]
  }
]