subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-nonprod"
name                = "vnet-ecommerce-nonprod"
address_space       = ["10.165.64.0/19"]
subnets = [
  {
    name              = "snet-aksnode-dev"
    address_prefixes  = ["10.165.80.0/23"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage","Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-dev"
  },
  {
    name              = "snet-akspod-dev"
    address_prefixes  = ["10.165.64.0/21"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage","Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-dev"
  },
  {
    name              = "snet-aksnode-preprod"
    address_prefixes  = ["10.165.82.0/23"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-preprod"
  },
  {
    name              = "snet-ecommerce-preprod"
    address_prefixes  = ["10.165.86.0/23"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-preprod"
  },
  {
    name              = "snet-ecomm-flexibleserver-dev"
    address_prefixes  = ["10.165.88.0/25"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-dev"
    delegation        = "Microsoft.DBforPostgreSQL/flexibleServers"
  },
  {
    name             = "snet-akspod-preprod"
    address_prefixes = ["10.165.72.0/21"]
    route_table_id   = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-preprod"
  },
  {
    name             = "snet-ecommerce-avd"
    address_prefixes = ["10.165.89.0/24"]
    route_table_id   = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-avd"
  },
  {
    name             = "snet-mysql-flexibleserver-nonprod"
    address_prefixes = ["10.165.90.0/26"]
    route_table_id   = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-dev"
    delegation       = "Microsoft.DBforMySQL/flexibleServers"
  },
  {
    name              = "snet-ecommerce-dev"
    address_prefixes  = ["10.165.84.0/23"]
    service_endpoints = ["Microsoft.Sql","Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/routeTables/rt-ecommerce-dev"
    delegation        = "Microsoft.DBforMySQL/flexibleServers"
  }
]


peerings = {
  globalvnet = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb"
  }
  global-aks-staging-temp-peering = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-ecommstaging/providers/Microsoft.Network/virtualNetworks/vnet-ecommstaging"
  }
  ecom-to-BT = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub"
  }
  Ecom-to-EUR = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"
  }
  Ecom-to-AMR = {
    remote_virtual_network_id = "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-amr-sechub/providers/Microsoft.Network/virtualNetworks/AMR-Vnetsechub"
  }
  test-peering-delete = {
    remote_virtual_network_id = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr"
  }
}
