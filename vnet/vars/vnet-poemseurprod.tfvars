subscription_id     = <subscription_id>
resource_group_name = "Rgpoemseur"
name                = "vnet-poemseurprod"
address_space       = ["10.154.0.0/22"]
create_default_peerings = false
use_ipam            = false
subnets = [
  {
    name             = "snet1-poemseurprod"
    address_prefixes = ["10.154.0.0/25"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/routeTables/Route-poemseurprod"
  },
  {
    name             = "redisprod-snet"
    address_prefixes = ["10.154.1.0/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/routeTables/Route-poemseurprod"
  },
   {
    name             = "snet-rostimafunctions"
    address_prefixes = ["10.154.2.0/28"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/routeTables/Route-poemseurprod"
  }
]

peerings = {
  
Eursechub-poemsprod = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"
  },

Peer-EUR-vnet-poemseurprod = {
    allow_forwarded_traffic      = false  
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/RG-EUR-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-eur-cpperimeter81-prod"
 },
Peer-EUR-K8-Docker = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-cpharmony-eur-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-eur-prod"
 }

}