subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshield-infra-nonprod"
name                = "vnet-cargoesshield-nonprod"
address_space       = ["10.2.16.0/20"]
subnets = [
  {
    name             = "snet-aks-cargoesshield-nonprod"
    address_prefixes = ["10.2.16.0/21"]
  },
  {
    name              = "snet-psql-cargoesshield-nonprod"
    address_prefixes  = ["10.2.24.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  }
]