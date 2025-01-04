subscription_id     = <subscription_id>
name                              = "db-cargoesapp-preprod"
resource_group_name               = "Rg-Cargoesapp-Preprod"
location                          = "uksouth"
postgresql_version                = "11"
sku_name                          = "GP_Gen5_2"
administrator_login               = "sqladmin"
infrastructure_encryption_enabled = false
#administrator_password         = "$ql@dmin2090$"
storage_mb                       = 286720
ssl_enforcement_enabled          = true
auto_grow_enabled                = true
geo_redundant_backup_enabled     = false
backup_retention_days            = 7
public_network_access_enabled    = true
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
  "ENV" : "UAT"
}