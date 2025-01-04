subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-dr"
name                = "vnet-ecommerce-dr"
use_ipam            = true
vnet_mask           = 19
subnets = [
  { name = "snet-ecommerce-shared-dr", snet_mask = 24 },
  { name = "snet-ecommerce-aks-dr", snet_mask = 21 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Arup Sarkar",
  "ENV" : "Prod",
  "Application Name" : "Ecommerce",
}