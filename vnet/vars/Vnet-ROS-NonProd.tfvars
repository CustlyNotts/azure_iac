subscription_id     = <subscription_id>
resource_group_name = "rg-ros-nonprod"
name                = "Vnet-ROS-NonProd"
address_space       = ["10.171.128.0/17"]
subnets = [
  {
    name              = "snet-aks-nonprodpods"
    address_prefixes  = ["10.171.128.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/routeTables/rt-Ros-NonProd"
  },
  {
    name              = "snet-ros-shared"
    address_prefixes  = ["10.171.145.0/24"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/routeTables/rt-Ros-NonProd"
  },
  {
    name              = "snet-aks-nonprodnodes"
    address_prefixes  = ["10.171.144.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/routeTables/rt-Ros-NonProd"
  },
  {
    name              = "snet-ros-nonprod-psqlflexible"
    address_prefixes  = ["10.171.136.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/routeTables/rt-Ros-NonProd"
  },
  {
    name              = "snet-ros-avd"
    address_prefixes  = ["10.171.137.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/routeTables/Route-ROSAVD"
  }
]