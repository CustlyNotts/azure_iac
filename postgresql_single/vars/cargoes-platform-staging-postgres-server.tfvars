subscription_id     = <subscription_id>
name                             = "cargoes-platform-staging-postgres-server"
resource_group_name              = "cargoes-staging"
location                         = "UAE North"
postgresql_version               = "11"
sku_name                         = "MO_Gen5_8"
administrator_login              = "CargoesPlatformStagingPostgresAdmin"
administrator_password           = "Dpworld$$2022"
storage_mb                       = 968704
ssl_enforcement_enabled          = true
auto_grow_enabled                = true
geo_redundant_backup_enabled     = false
backup_retention_days            = 7
public_network_access_enabled    = true
ssl_minimal_tls_version_enforced = "TLS1_2"

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

tags = {
  "Application Name" : "Cargoes Platform",
  "Application Owner" : "Ravi Pandey",
  "ENV" : "TESTING"
}