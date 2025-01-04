subscription_id     = <subscription_id>
name                             = "psql-blockchainuae-staging"
resource_group_name              = "rg-BlockchainUAEstaging"
location                         = "UAE North"
postgresql_version               = "11"
sku_name                         = "GP_Gen5_4"
administrator_login              = "blockchainadmin"
administrator_password           = "Dpworld$$2022"
storage_mb                       = 102400
ssl_enforcement_enabled          = true
auto_grow_enabled                = true
geo_redundant_backup_enabled     = false
backup_retention_days            = 7
public_network_access_enabled    = true
ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"

#threat_detection_policy = {
  #email_account_admins = false,
  #enabled              = true,
  #retention_days       = 0
#}
postgresql_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}