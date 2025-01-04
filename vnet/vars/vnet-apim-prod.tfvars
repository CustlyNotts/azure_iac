subscription_id     = <subscription_id>
resource_group_name = "rg-dpw-apim-prod"
name                = "vnet-apim-prod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  {
    name      = "snet-apim-prod"
    snet_mask = 25
    network_security_group_id = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/rg-dpw-apim-prod/providers/Microsoft.Network/networkSecurityGroups/nsg-apim-prod"
    route_table_id    = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/rg-dpw-apim-prod/providers/Microsoft.Network/routeTables/rt-apim-prod"
    service_endpoints         = ["Microsoft.Sql","Microsoft.Storage","Microsoft.KeyVault","Microsoft.ServiceBus","Microsoft.EventHub"]
  },
    {
    name      = "snet-shared"
    snet_mask = 26
    route_table_id    = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/rg-dpw-apim-prod/providers/Microsoft.Network/routeTables/rt-apim-prod"
    service_endpoints         = ["Microsoft.Sql","Microsoft.Storage","Microsoft.KeyVault","Microsoft.ServiceBus","Microsoft.EventHub"]
  }
]
create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Azure APIM",
  "Application Owner" : "Shaloof Moopan",
  "ENV" : "PROD"
  "RITM" : "12345"
}