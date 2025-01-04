subscription_id     = <subscription_id>
name                             = "psql-ros-prod--dr"
resource_group_name              = "rg-ros-prod"
location                         = "UK South"
postgresql_version               = "11"
sku_name                         = "GP_Gen5_8"
administrator_login              = "psqladmin"
administrator_password           = "Dpworld$$2022"
storage_mb                       = 15360
ssl_enforcement_enabled          = false
auto_grow_enabled                = true
geo_redundant_backup_enabled     = true
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
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "PROD"
}