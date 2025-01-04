subscription_id     = <subscription_id>
resource_group_name = "Rg-Cargoes-APIM-NonProd"
name                = "vnet-apim-nonprod"
use_ipam            = true
vnet_mask           = 24
subnets = [
  {
    name      = "snet-apim-nonprod"
    snet_mask = 25
    route_table_id    = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-NonProd/providers/Microsoft.Network/routeTables/rt-apimnonprod"
    service_endpoints         = ["Microsoft.Sql","Microsoft.Storage","Microsoft.KeyVault","Microsoft.ServiceBus","Microsoft.EventHub"]
  },
    {
    name      = "snet-shared"
    snet_mask = 26
    route_table_id    = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-NonProd/providers/Microsoft.Network/routeTables/rt-apimnonprod"
    service_endpoints         = ["Microsoft.Sql","Microsoft.Storage","Microsoft.KeyVault","Microsoft.ServiceBus","Microsoft.EventHub"]
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "APIM",
  "Application Owner" : "Veeresh Sondhakar",
  "ENV" : "NonProd"
  "RITM" : "12345"
}