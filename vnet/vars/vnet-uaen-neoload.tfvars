subscription_id     = <subscription_id>
resource_group_name  = "rg-uaen-neoload"
name                 = "vnet-uaen-neoload"
address_space        = ["10.210.48.0/24"]
subnets              = [
  {
    name                      = "snet-uaen-neoload01"
    address_prefixes          = ["10.210.48.0/28"]
    service_endpoints         = []
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-uaen-neoload/providers/Microsoft.Network/routeTables/Route-Neoload"
    #network_security_group_id = "None"
  }
]
create_default_peerings = false
