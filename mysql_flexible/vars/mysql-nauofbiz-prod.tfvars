subscription_id     = <subscription_id>
name                                 = "mysql-nauofbiz-prod"
resource_group_name                  = "Rg-Ofbiz-Prod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod/subnets/snet-mysql-prod"
private_dns_zone_name                = "mysql-nau-prod.private.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-nau-production"
auto_grow_enabled                    = true
iops                                 = "492"
size_gb                              = "64"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}