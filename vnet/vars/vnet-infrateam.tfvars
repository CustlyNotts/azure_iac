subscription_id     = <subscription_id>
resource_group_name = "rg-infrateam"
name                = "vnet-infrateam"
address_space       = ["10.139.0.0/22", "10.139.40.0/21"]
subnets = [
  {
    name              = "snet-aks-infra"
    address_prefixes  = ["10.139.0.0/22"]
    service_endpoints = ["Microsoft.Storage"]
  }
]
