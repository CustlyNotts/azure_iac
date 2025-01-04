subscription_id     = <subscription_id>
name                                 = "mysql-tms-prod"
resource_group_name                  = "rg-tms-prod"
mysql_version                        = "8.0.21"
sku_name                             = "GP_Standard_D8ds_v4"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-tms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-tms-prod/subnets/snet-tms-prod-mysql"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-tms-prod-infra"
auto_grow_enabled                    = false
iops                                 = "492"
size_gb                              = "64"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Transportation Management System",
  "Application Owner" : "Shiv Suthar",
  "ENV" : "Prod"
}