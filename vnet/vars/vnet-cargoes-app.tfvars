subscription_id     = <subscription_id>
resource_group_name  = "rg-cargoes-app"
name                 = "vnet-cargoes-app"
address_space        = ["10.233.0.0/27"]
subnets              = [
  {
    name                      = "snet-cargoes-app-devtools"
    address_prefixes          = ["10.233.0.0/28"]
    service_endpoints         = []
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/routeTables/Route-Cargoesapp"
    #network_security_group_id = "None"
  }
]
create_default_peerings = false
