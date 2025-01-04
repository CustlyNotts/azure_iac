subscription_id     = <subscription_id>
name                                 = "mysql-dpworldcms-prod"
resource_group_name                  = "rg-dpworldcms-prod"
mysql_version                        = "8.0.21"
sku_name                             = "GP_Standard_D4ds_v4"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "NA"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-dpworldcms-prod-infra"
auto_grow_enabled                    = false
iops                                 = "492"
size_gb                              = "20"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Dpworld CMS",
  "Application Owner" : "Bilal Adham",
  "ENV" : "Prod"
}