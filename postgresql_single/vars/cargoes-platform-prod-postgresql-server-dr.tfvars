subscription_id     = <subscription_id>
name                             = "cargoes-platform-prod-postgresql-server-dr"
resource_group_name              = "cargoes-prod"
location                         = "East Asia"
postgresql_version               = "11"
sku_name                         = "MO_Gen5_8"
administrator_login              = "CargoesPlatformProdPostgresAdmin"
administrator_password           = "Dpworld$$2022"
storage_mb                       = 1514496
ssl_enforcement_enabled          = true
auto_grow_enabled                = true
geo_redundant_backup_enabled     = false
backup_retention_days            = 35
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
  "Application Name" : "Flow/datachain/logistics",
  "Application Owner" : "Ravi/Mostafa/Jaya",
  "env" : "PROD"
}