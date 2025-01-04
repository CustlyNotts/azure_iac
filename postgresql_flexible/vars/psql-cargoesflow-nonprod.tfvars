subscription_id     = <subscription_id>
name                           = "psql-cargoesflow-nonprod"
resource_group_name            = "rg-cargoesflow-dev"
virtual_network                = "vnet-cargoesflow-dev"
virtual_network_resource_group = "rg-cargoesflow-infra"
subnet                         = "snet-postgres-flex-nonprod"
postgresql_version             = "15"
sku_name                       = "GP_Standard_D4ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 32768
private_dns_zone_id            = ""
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev/subnets/snet-postgres-flex-nonprod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Mostafa/Nitesh",
  "ENV" : "DEV",
  "Application Name" : "Cargoes Flow",
  "RITM" : "RITM012345",
  "scheduler" : "off=(S,9);on=(M,7);tz=Asia/Dubai"
}