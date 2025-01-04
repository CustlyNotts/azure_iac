subscription_id     = <subscription_id>
resource_group_name = "rg-global-infra-prod"
name                = "vnet-global-prod"
address_space       = ["10.2.32.0/19"]
subnets = [
  {
    name              = "snet-aks-global-prod"
    address_prefixes  = ["10.2.32.0/21"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.2.40.0/25"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-common-flex"
    address_prefixes  = ["10.2.40.128/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.DBforMySQL/flexibleServers"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.2.41.0/24"]
    service_endpoints = ["Microsoft.Storage"]
  }
]