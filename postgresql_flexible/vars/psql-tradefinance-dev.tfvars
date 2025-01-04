subscription_id     = <subscription_id>
name                           = "psql-tradefinance-dev"
resource_group_name            = "cargoes-finance-staging"
virtual_network                = "vnet_trfinance_nonprod"
virtual_network_resource_group = "cargoes-finance-staging"
subnet                         = "snet-flexibleserver-dev"
postgresql_version             = "14"
sku_name                       = "B_Standard_B1ms"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 32768
private_dns_zone_id            = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/privateDnsZones/psql-tradefinance-dev.private.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/virtualNetworks/vnet_trfinance_nonprod/subnets/snet-flexibleserver-dev"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name": "Cargoes Finance",
        "Application Owner": "Abhinav Sharma",
        "ENV": "DEV"
}