subscription_id     = <subscription_id>
resource_group_name = "rg-network"
name                = "vnet-appliedscience"
address_space       = ["10.157.0.0/16"]
subnets = [
  {
    name              = "snet-berthplanningoptimizer-pvtendpoint"
    address_prefixes  = ["10.157.0.0/26"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5a53469f-938f-4947-908f-851bde5c3777/resourceGroups/rg-berthplanningoptimizer/providers/Microsoft.Network/routeTables/route-berthplanningoptimizer"
  },
  {
    name             = "snet-appliedsciencecontainerplacement-dev"
    address_prefixes = ["10.157.0.64/26"]
    route_table_id   = "/subscriptions/5a53469f-938f-4947-908f-851bde5c3777/resourceGroups/rg-containerplacement-dev/providers/Microsoft.Network/routeTables/route-containerplacement"
  },
  {
    name              = "snet-psqlcostapi-dev"
    address_prefixes  = ["10.157.0.128/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/5a53469f-938f-4947-908f-851bde5c3777/resourceGroups/rg-costapi-dev/providers/Microsoft.Network/routeTables/route-costapiweapp-dev"
  },
  {
    name             = "snet-costapiwebapp-dev"
    address_prefixes = ["10.157.0.160/27"]
    route_table_id   = "/subscriptions/5a53469f-938f-4947-908f-851bde5c3777/resourceGroups/rg-costapi-dev/providers/Microsoft.Network/routeTables/route-costapiweapp-dev"
  },
  {
    name             = "snet-aks-appliedscience-dev"
    address_prefixes = ["10.157.4.0/22"]
  }
]