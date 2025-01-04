subscription_id     = <subscription_id>
resource_group_name = "rg-btinfra-dr"
name                = "vnet-bt-dr"
address_space       = ["172.17.0.0/16"]
subnets = [
  {
    name              = "snet-btuat-dr"
    address_prefixes  = ["172.17.0.0/21"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-uatcommon-dr"
    address_prefixes  = ["172.17.8.0/24"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-uatcommonflex-dr"
    address_prefixes  = ["172.17.9.0/28"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-uatinternallb-dr"
    address_prefixes  = ["172.17.10.0/25"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-bt-dr"
    address_prefixes  = ["172.17.16.0/21"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-common-dr"
    address_prefixes  = ["172.17.11.0/24"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-commonflex-dr"
    address_prefixes  = ["172.17.12.0/28"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-internallb-dr"
    address_prefixes  = ["172.17.13.0/25"]
    service_endpoints = ["Microsoft.Storage"]
  }
]
