subscription_id     = <subscription_id>
name                           = "db-wlp-dev"
resource_group_name            = "rg-wlp-dev"
location                       = "UAE North"
postgresql_version             = "11"
sku_name                       = "GP_Gen5_4"
administrator_login            = "psqladminun"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 428032
ssl_enforcement_enabled        = true
auto_grow_enabled              = true
geo_redundant_backup_enabled   = true
backup_retention_days          = 7
public_network_access_enabled  = false
ssl_minimal_tls_version_enforced  = "TLS1_2"
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
        "Application Name": "WLP Dev",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV"
 }