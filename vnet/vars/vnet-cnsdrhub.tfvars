subscription_id     = <subscription_id>
resource_group_name = "rg-cnsdrhubnw"
name                = "vnet-cnsdrhub"
address_space       = ["10.222.14.0/24", "10.222.15.0/24"]
subnets = [
  {
    name              = "snet-cnsdrfwbackend"
    address_prefixes  = ["10.222.14.16/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "GatewaySubnet"
    address_prefixes  = ["10.222.14.48/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "snet-cnsdrmgmt"
    address_prefixes  = ["10.222.14.32/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "snet-cnsdrfwfrontend"
    address_prefixes  = ["10.222.14.0/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/routeTables/route-snet-cnsdrfwfrontend"
  },
  {
    name              = "snet-cnsdrappgw"
    address_prefixes  = ["10.222.15.0/24"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/routeTables/route-cnsdr"
  }
]
create_default_peerings = false
peerings = {
  cnsprihub-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsprihub"
  }
  cnsdr-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr"
    allow_gateway_transit     = true
  }
  cnsdrhub-cnsnetwork = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"
  }
  VnetPeering-WVDall-CNSDRHub = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
  CNSDR-EURHUB = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-dr-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnet-dr-sechub"
  }
  Peer-EUR-K8-Docker = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-cpharmony-eur-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-eur-prod"
  }
  Peer-EUR-vnet-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/RG-EUR-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-eur-cpperimeter81-prod"
  }
}
