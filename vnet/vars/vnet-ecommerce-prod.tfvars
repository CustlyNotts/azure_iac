subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-prod"
name                = "vnet-ecommerce-prod"
address_space       = ["10.165.96.0/20"]
subnets = [
  {
    name              = "snet-aksnode-prod"
    address_prefixes  = ["10.165.104.0/23"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/routeTables/rt-ecommerceaks-prod"
  },
  {
    name              = "snet-akspod-prod"
    address_prefixes  = ["10.165.96.0/21"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/routeTables/rt-ecommerceaks-prod"
  },
  {
    name              = "snet-ecommerce-prod"
    address_prefixes  = ["10.165.106.0/24"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/routeTables/rt-ecommerceshared-prod"
  },
  {
    name              = "snet-ecommerce-flexibleserver-prod"
    address_prefixes  = ["10.165.107.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/routeTables/rt-ecommerceshared-prod"
  }
]

peerings = {
  global-vnet = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb"
  }
  aks-ecomm-prod = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-ecomm-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecomprod"
  }
  vnet-ecommerce-prod-dr = {
    remote_virtual_network_id = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr"
  }
}