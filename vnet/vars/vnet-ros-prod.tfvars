subscription_id     = <subscription_id>
resource_group_name = "rg-ros-prod"
name                = "vnet-ros-prod"
address_space       = ["10.171.0.0/17"]
subnets = [
  {
    name              = "snet-aks-prod"
    address_prefixes  = ["10.171.0.0/21"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/routeTables/Rt-ros-prod"
  },
  {
    name              = "snet-ros-shared"
    address_prefixes  = ["10.171.8.0/25"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/routeTables/Rt-ros-prod"
  },
  {
    name              = "snet-ros-prod-psqlflexible"
    address_prefixes  = ["10.171.9.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/routeTables/Rt-ros-prod"
  }
]