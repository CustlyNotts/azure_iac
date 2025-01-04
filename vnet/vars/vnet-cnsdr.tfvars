subscription_id     = <subscription_id>
resource_group_name = "rg-cnsdr"
name                = "vnet-cnsdr"
address_space       = ["172.21.0.0/19"]
subnets = [
  {
    name              = "snet-dr-support"
    address_prefixes  = ["172.21.17.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
  },
  {
    name              = "GatewaySubnet"
    address_prefixes  = ["172.21.16.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
  },
  {
    name              = "snet-cnsdr-ep"
    address_prefixes  = ["172.21.20.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/routeTables/route-snet-cnsdr-ep"
  },
  {
    name              = "snet-cnsdr-ilb"
    address_prefixes  = ["172.21.21.0/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/routeTables/route-cnsdr-aks"
  },
  {
    name              = "snet-cnsdragic"
    address_prefixes  = ["172.21.19.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
  },
  {
    name              = "snet-cnsdr"
    address_prefixes  = ["172.21.0.0/20"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/routeTables/route-cnsdr-aks"
  },
  {
    name              = "snet-cnspreprod-dr"
    address_prefixes  = ["172.21.24.0/21"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnspreprod-dr/providers/Microsoft.Network/routeTables/route-cnspreprod-dr"
  }
]
peerings = {
  ukwest-uksouth = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"
  }
  cnsdr-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub"
    use_remote_gateways       = true
  }
  CNSDR-EURDRHUB = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-dr-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnet-dr-sechub"
  }
  VnetPeering-vnetcnsdr-AdVnet = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgadds/providers/Microsoft.Network/virtualNetworks/Vnet-AD"
  }
}
