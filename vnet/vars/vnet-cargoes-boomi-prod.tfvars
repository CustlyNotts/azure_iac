subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-boomi-prod"
name                = "vnet-cargoes-boomi-prod"
address_space       = ["10.139.16.0/20"]
subnets = [
  {
    name              = "snet-cargoes-boomi-prod"
    address_prefixes  = ["10.139.16.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/82e3e8d8-3e5b-42e4-87cf-be360dbacb3a/resourceGroups/rg-cargoes-boomi-prod/providers/Microsoft.Network/routeTables/rt-snet-cargoes-boomi-prod"
  }
]