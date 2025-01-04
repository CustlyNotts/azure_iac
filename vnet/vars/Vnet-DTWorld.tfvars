subscription_id     = <subscription_id>
resource_group_name = "Rg-Vnet"
name                = "Vnet-DTWorld"
address_space       = ["10.156.0.0/16"]
subnets = [
  {
    name              = "snet-perftest"
    address_prefixes  = ["10.156.9.0/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/route-perftest"
  },
  {
    name             = "snet-aksnode-accounts-prod"
    address_prefixes = ["10.156.8.0/24"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-aksnode-accounts-prod"
  },
  {
    name              = "snet-akspod-accounts-prod"
    address_prefixes  = ["10.156.0.0/21"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.ServiceBus", "Microsoft.Storage", "Microsoft.Web"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-akspod-accounts-prod"
  },
  {
    name             = "snet-internallb"
    address_prefixes = ["10.156.10.0/24"]
    route_table_id   = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-snet-internallb"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.156.11.0/25"]
    service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/route-snet-common"
  }
]

peerings = {
  peer-vnet-DTworld-cnsprihub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsprihub"
  }
  vnet-DTworld-Vnet-bthub = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub"
  }
  Vnet-Accounts-Prod = {
    remote_virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsproduction/providers/Microsoft.Network/virtualNetworks/vnet-accounts-prod"
  }
  DTW-to-EUR = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"
  }
}