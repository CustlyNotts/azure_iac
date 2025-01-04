subscription_id     = <subscription_id>
name                           = "pg-imperialconnect-nonprod"
resource_group_name            = "rg-ecommerce-dev"
virtual_network                = "vnet-ecommerce-nonprod"
virtual_network_resource_group = "rg-ecommerce-infra-nonprod"
subnet                         = "snet-ecomm-flexibleserver-dev"
postgresql_version             = "14"
sku_name                       = "B_Standard_B2s"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 32768
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Arup Sarkar",
  "ENV" : "NONPROD",
  "Application Name" : "imperial",
  "RITM" : "RITM0064165"
}