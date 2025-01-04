subscription_id     = <subscription_id>
resource_group_name = "cnsnw"
name                = "CNSNetwork"
address_space       = ["172.22.0.0/16"]
subnets = [
  {
    name              = "GatewaySubnet"
    address_prefixes  = ["172.22.128.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql"]
  },
  {
    name              = "snet-cnsagic"
    address_prefixes  = ["172.22.129.0/24"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "snet-cnsuat-ilb"
    address_prefixes  = ["172.22.137.48/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
  },
  {
    name              = "snet-cnsprod-ilb"
    address_prefixes  = ["172.22.137.0/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspri"
  },
  {
    name              = "snet-cnspreprod"
    address_prefixes  = ["172.22.132.0/22"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspreprod"
  },
  {
    name              = "snet-cnspreprod-ilb"
    address_prefixes  = ["172.22.137.16/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspreprod"
  },
  {
    name              = "snet-cnspt-ilb"
    address_prefixes  = ["172.22.137.64/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
  },
  {
    name              = "snet-cnstest-ilb"
    address_prefixes  = ["172.22.137.32/28"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-checkpointmgmt/providers/Microsoft.Network/routeTables/route-cnsvpncheckpoint"
  },
  {
    name              = "snet-cns-ep"
    address_prefixes  = ["172.22.136.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-checkpointmgmt/providers/Microsoft.Network/routeTables/route-cnsvpncheckpoint"
  },
  {
    name                      = "snet-cnsprod"
    address_prefixes          = ["172.22.96.0/19"]
    service_endpoints         = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspri"
    network_security_group_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.Network/networkSecurityGroups/nsg-cnsprod"
  },
  {
    name              = "snet-cnspre-prod"
    address_prefixes  = ["172.22.144.0/20"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspreprod"
  },
  {
    name              = "Snet-sftp"
    address_prefixes  = ["172.22.176.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/Rg-sftp-dev/providers/Microsoft.Network/routeTables/Route-sftp"
  },
  {
    name                      = "snet-cnsprod-green"
    address_prefixes          = ["172.22.160.0/20"]
    service_endpoints         = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspri"
    network_security_group_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.Network/networkSecurityGroups/nsg-cnsprod"
  },
  {
    name              = "PT"
    address_prefixes  = ["172.22.64.0/19"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsrundeck-nonprod/providers/Microsoft.Network/routeTables/Route-PT"
  },
  {
    name              = "snet-aksnode-cns-dev"
    address_prefixes  = ["172.22.192.0/24"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cns-dev/providers/Microsoft.Network/routeTables/route-cnsdev"
  },
  {
    name              = "snet-akspod-cns-dev"
    address_prefixes  = ["172.22.184.0/21"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cns-dev/providers/Microsoft.Network/routeTables/route-cnsdev"
  },
  {
    name              = "Test"
    address_prefixes  = ["172.22.0.0/19"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-checkpointmgmt/providers/Microsoft.Network/routeTables/route-cnsvpncheckpoint"
  },
  {
    name                      = "UAT1"
    address_prefixes          = ["172.22.32.0/19"]
    service_endpoints         = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage.Global"]
    route_table_id            = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsuat/providers/Microsoft.Network/routeTables/route-cnsuat"
    network_security_group_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsuat/providers/Microsoft.Network/networkSecurityGroups/nsg-cnsuat"
  }
]

peerings = {
  uksouth-ukwest = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr"
  }
  cnsnetwork-cnsprihub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsprihub"
    use_remote_gateways       = true
  }
  cnsnetwork-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub"
  }
  VnetPeering-CNSNetwork-AdVnet = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgadds/providers/Microsoft.Network/virtualNetworks/Vnet-AD"
  }
  vnet-eursechub = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-appgw-prod/providers/Microsoft.Network/virtualNetworks/vnet-eurappgw"
  }
}