subscription_id     = <subscription_id>
name                             = "psql-blockchainuae-prod-dr"
resource_group_name              = "rg-blockchain-prod"
location                         = "UK South"
postgresql_version               = "11"
sku_name                         = "GP_Gen5_2"
administrator_login              = "psqladmin"
administrator_password           = "Dpworld$$2022"
storage_mb                       = 36864
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

tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "PROD"
}