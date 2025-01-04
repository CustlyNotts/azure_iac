subscription_id     = <subscription_id>
resource_group_name  = "rg-sonarqube-de"
name                 = "vnet-sonarqube-de"
address_space        = ["10.0.1.0/24"]
subnets              = [
  {
    name                      = "default"
    address_prefixes          = ["10.0.1.0/24"]
    service_endpoints         = ["Microsoft.Storage"]
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-sonarqube-de/providers/Microsoft.Network/routeTables/Route-Sonarqube-de"
  }
]
create_default_peerings = false
