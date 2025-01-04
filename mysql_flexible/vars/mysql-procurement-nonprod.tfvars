subscription_id     = <subscription_id>
name                                 = "mysql-procurement-nonprod"
resource_group_name                  = "rg-ecommerce-dev"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-mysql-flexibleserver-nonprod"
private_dns_zone_name                = "mysql-sellerportal-nonprod.private.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-ecommerce-infra-nonprod"
auto_grow_enabled                    = false
iops                                 = "1280"
size_gb                              = "64"
zone                                 = "2"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}