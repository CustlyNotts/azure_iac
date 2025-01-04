subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-dr-infra"
name                = "vnet-cargoesflow-dr"
address_space       = ["10.2.128.0/19"]
subnets = [
  {
    name              = "snet-nonaks-prod-dr"
    address_prefixes  = ["10.2.136.0/22"]
    service_endpoints = ["Microsoft.Storage.Global"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dr-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dr"
  },
  {
    name              = "snet-aksnode-prod-dr"
    address_prefixes  = ["10.2.128.0/21"]
    service_endpoints = ["Microsoft.Storage.Global"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dr-infra/providers/Microsoft.Network/routeTables/rt-cargoesflow-dr"
  },
  {
    name              = "snet-cargoesflowfunction-prod-dr"
    address_prefixes  = ["10.2.140.0/27"]
    service_endpoints = ["Microsoft.Storage.Global"]
    delegation        = "Microsoft.Web/serverFarms"
  }
]