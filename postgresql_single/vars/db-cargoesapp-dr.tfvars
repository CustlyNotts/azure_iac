subscription_id     = <subscription_id>
name                              = "db-cargoesapp-dr"
resource_group_name               = "Rg-Cargoesapp-Prod"
location                          = "ukwest"
create_mode                       = "Replica"
postgresql_version                = "11"
sku_name                          = "GP_Gen5_4"
infrastructure_encryption_enabled = false
administrator_login               = "sqladmin"
#administrator_password         = "$ql@dmin2090$"
storage_mb                       = 409600
ssl_enforcement_enabled          = true
auto_grow_enabled                = true
geo_redundant_backup_enabled     = true
backup_retention_days            = 7
public_network_access_enabled    = true
creation_source_server_id        = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/Rg-Cargoesapp-Prod/providers/Microsoft.DBforPostgreSQL/servers/db-cargoesapp-prod"
ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
postgresql_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
