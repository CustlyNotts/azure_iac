subscription_id     = <subscription_id>
resource_group_name = "RG-EUR-CP-Perimeter81"
name                = "vnet-eur-cpperimeter81-prod"
address_space       = ["10.205.8.48/28"]
subnets = [
  {
    name              = "snet-eur-cpperimeter81-prod"
    address_prefixes  = ["10.205.8.48/28"]
    service_endpoints = ["Microsoft.KeyVault"]
  }
]