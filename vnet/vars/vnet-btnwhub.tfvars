subscription_id     = <subscription_id>
resource_group_name = "rg-btnwhub"
name                = "vnet-btnwhub"
address_space       = ["10.223.0.0/16"]
subnets = [
  {
    name              = "snet-btprod"
    address_prefixes  = ["10.223.12.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprod-01/providers/Microsoft.Network/routeTables/route-bt-snet-btprod"
  },
  {
    name              = "snet-btstaging"
    address_prefixes  = ["10.223.32.0/20"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnwhub/providers/Microsoft.Network/routeTables/route-bt-snet-btstaging"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.223.16.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btdemo/providers/Microsoft.Network/routeTables/route-bt-snet-btdemo"
  },
  {
    name              = "snet-bt-prod"
    address_prefixes  = ["10.223.48.0/20"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-bt-prod/providers/Microsoft.Network/routeTables/route-bt-prod"
  },
  {
    name              = "snet-bt-preprod-green"
    address_prefixes  = ["10.223.96.0/20"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-bt-preprod-green/providers/Microsoft.Network/routeTables/route-snet-bt-preprodgreen"
  },
  {
    name              = "snet-bt-prod-green"
    address_prefixes  = ["10.223.64.0/20"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-bt-prod-green/providers/Microsoft.Network/routeTables/route-bt-prod-green"
  },
  {
    name              = "snet-bt-preprod"
    address_prefixes  = ["10.223.80.0/20"]
    service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-bt-preprod/providers/Microsoft.Network/routeTables/route-snet-bt-preprod"
  },
  {
    name              = "snet-btuat"
    address_prefixes  = ["10.223.8.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btuat01/providers/Microsoft.Network/routeTables/route-bt-snet-btuat"
  },
  {
    name              = "snet-btdemo"
    address_prefixes  = ["10.223.0.0/22"]
    service_endpoints = ["Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btdemo/providers/Microsoft.Network/routeTables/route-bt-snet-btdemo"
  }
]

peerings = {
  peer-vnet-bthub-to-vnet-btnwhub = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub"
  }
  peer-vnet-bthub-to-vnet-btnw = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnw/providers/Microsoft.Network/virtualNetworks/vnet-btnw"
  }
  BT-to-AMR = {
    remote_virtual_network_id = "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-amr-sechub/providers/Microsoft.Network/virtualNetworks/AMR-Vnetsechub"
  }
  BT-to-EUR = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"
  }
  tetss = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprod-dr/providers/Microsoft.Network/virtualNetworks/vnet-btprod-dr"
  }
}