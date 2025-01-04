subscription_id     = <subscription_id>
resource_group_name  = "rg-accountsproduction"
name                 = "vnet-accounts-selfhostedagent"
address_space        = ["10.222.224.0/28"]
subnets              = [
  {
    name                      = "snet-accounts-apgw"
    address_prefixes          = ["10.222.224.8/29"]
    service_endpoints         = []
    route_table_id            = "None"
    #network_security_group_id = "None"
  },
  {
    name                      = "snet-accounts-selfhostedagent"
    address_prefixes          = ["10.222.224.0/29"]
    service_endpoints         = ["Microsoft.Sql"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsproduction/providers/Microsoft.Network/routeTables/Route-accounts-prod"
    #network_security_group_id = "None"
  }
]
