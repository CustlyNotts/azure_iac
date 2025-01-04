subscription_id     = <subscription_id>
name                             = "db-customsapp-uat"
resource_group_name              = "rg-cnsuat"
location                         = "uksouth"
postgresql_version               = "11"
sku_name                         = "GP_Gen5_2"
administrator_login              = "cargoes"
administrator_password           = "$ql@dmin2090$"
storage_mb                       = 286720
ssl_enforcement_enabled          = false
auto_grow_enabled                = true
geo_redundant_backup_enabled     = false
backup_retention_days            = 7
public_network_access_enabled    = true
ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
# threat_detection_policy = {
#   email_account_admins = false,
#   enabled = true,
#   retention_days = 0
# }
postgresql_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DEV"
}