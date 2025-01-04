subscription_id     = <subscription_id>
resource_group_name  = "Rg-build"
name                 = "vnet-build"
address_space        = ["10.210.0.0/28"]
subnets              = [
  {
    name                      = "snet-build"
    address_prefixes          = ["10.210.0.0/28"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/routeTables/Route-Build"
    #network_security_group_id = "None"
  }
]
create_default_peerings = false
