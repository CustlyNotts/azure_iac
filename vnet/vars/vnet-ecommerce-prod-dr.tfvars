subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-prod-dr"
name                = "vnet-ecommerce-prod-dr"
address_space       = ["10.165.160.0/19"]
subnets = [
  {
    name              = "snet-aksnode-prod-dr"
    address_prefixes  = ["10.165.162.0/23"]
    service_endpoints = ["Microsoft.AzureCosmosDB","Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-ecommerceaks-prod-dr"
  },
  {
    name              = "snet-akspod-prod-dr"
    address_prefixes  = ["10.165.168.0/21"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-ecommerceaks-prod-dr"
  },
  {
    name              = "snet-ecommerce-prod-dr"
    address_prefixes  = ["10.165.160.0/24"]
    service_endpoints = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.Web"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-ecommerceshared-prod-dr"
  },
  {
    name              = "snet-ecommerce-flexibleserver-prod-dr"
    address_prefixes  = ["10.165.161.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-ecommerceshared-prod-dr"
  }
]
create_default_peerings = false
# peerings = {
#   global-vnet = {
#     remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb"
#   }
#   aks-ecomm-prod = {
#     remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-ecomm-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecomprod"
#   }
#   vnet-ecommerce-prod-dr = {
#     remote_virtual_network_id = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr"
#   }
# }
