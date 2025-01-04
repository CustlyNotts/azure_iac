subscription_id     = <subscription_id>
name                           = "pg-flex-cargoesflow-perf"
resource_group_name            = "rg-cargoesflow-perf"
virtual_network                = "vnet-cargoesflow-dev"
virtual_network_resource_group = "rg-cargoesflow-infra"
subnet                         = "snet-cargoesflow-flexible-perf"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D4ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 262144
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Mostafa/Nitesh",
  "ENV" : "Perf",
  "Application Name" : "Cargoes Flow",
  "RITM" : "RITM012345",
  "scheduler" : "off=(S,9);on=(M,7);tz=Asia/Dubai"
}