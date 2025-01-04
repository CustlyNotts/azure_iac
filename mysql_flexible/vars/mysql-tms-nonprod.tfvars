subscription_id     = <subscription_id>
name                                 = "mysql-tms-nonprod"
resource_group_name                  = "rg-tms-nonprod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-tms-nonprod-infra/providers/Microsoft.Network/virtualNetworks/vnet-tms-nonprod/subnets/snet-tms-nonprod-mysql"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-tms-nonprod-infra"
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
  "ENV" : "NonProd"
}