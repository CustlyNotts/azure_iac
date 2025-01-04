subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshield-infra-prod"
name                = "vnet-cargoesshield-prod"
address_space       = ["10.2.64.0/19"]
subnets = [
  {
    name             = "snet-aks-cargoesshield-prod"
    address_prefixes = ["10.2.64.0/21"]
  }
]
tags = {
  "Application Owner" : "Ritesh Singh",
  "ENV" : "PROD",
  "Application Name" : "CargoesShield",
  "RITM" : "RITM0066942"
  "X-IPAM-RES-ID" : "AU8xzBWPhS3qp4eud9FcVf"
}