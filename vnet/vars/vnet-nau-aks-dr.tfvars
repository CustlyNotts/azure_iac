subscription_id     = <subscription_id>
resource_group_name = "Rg-nau-prod-dr"
name                = "vnet-nau-aks-dr"
address_space       = ["10.236.48.0/20"]
subnets = [
  {
    name              = ["snet-nau-aks-dr", "snet-nau-shared-dr"]
    address_prefixes  = ["10.236.48.0/21", "10.236.56.0/25"]
      }
]
