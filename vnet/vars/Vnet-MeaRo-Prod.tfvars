subscription_id     = <subscription_id>
resource_group_name = "Rg-MeaRo-Infra-Prod"
name                = "Vnet-MeaRo-Prod"
address_space       = ["10.141.4.0/22"]
subnets = [
  {
    name             = "Prod"
    address_prefixes = ["10.141.4.0/25"]
    route_table_id   = "/subscriptions/f3c84ef6-ce90-4a07-a6f9-c80ef68547c2/resourceGroups/Rg-MeaRo-Infra-Prod/providers/Microsoft.Network/routeTables/Route-MeaRo-Prod"
  },
  {
    name             = "snet-avd-mearo"
    address_prefixes = ["10.141.4.128/28"]
    route_table_id   = "/subscriptions/f3c84ef6-ce90-4a07-a6f9-c80ef68547c2/resourceGroups/rg-AVD-MEA-RO-DEV/providers/Microsoft.Network/routeTables/rt-avd-mea-ro"
  },
  {
    name             = "snet-mongdb-oee-mearo-prod"
    address_prefixes = ["10.141.4.160/27"]
  },
  {
    name              = "snet-pl-oee-mearo-prod"
    address_prefixes  = ["10.141.4.192/27"]
    service_endpoints = ["Microsoft.KeyVault"]
  },
  {
    name             = "snet-aks-oee-mearo-prod"
    address_prefixes = ["10.141.6.0/23"]
    route_table_id   = "/subscriptions/f3c84ef6-ce90-4a07-a6f9-c80ef68547c2/resourceGroups/Rg-MeaRo-Infra-Prod/providers/Microsoft.Network/routeTables/route-oee-mearo-prod"
  }
]