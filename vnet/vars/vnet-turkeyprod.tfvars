subscription_id     = <subscription_id>
resource_group_name = "rg-turkeyprod"
name                = "vnet-turkeyprod"
address_space       = ["10.222.24.0/21"]
subnets = [
  {
    name             = "snet-internallb"
    address_prefixes = ["10.222.28.0/28"]
    route_table_id   = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkeyprod/providers/Microsoft.Network/routeTables/Route-Turkey-Prod"
  },
  {
    name              = "snet-turkeyprod"
    address_prefixes  = ["10.222.24.0/22"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkeyprod/providers/Microsoft.Network/routeTables/Route-Turkey-Prod"
  },
  {
    name             = "snet-common-flex"
    address_prefixes = ["10.222.29.0/28"]
    route_table_id   = "/subscriptions/4b645787-cdfe-4b5a-b2df-4dfbb226ec40/resourceGroups/rg-turkeyprod/providers/Microsoft.Network/routeTables/Route-Turkey-Prod"
  }
]