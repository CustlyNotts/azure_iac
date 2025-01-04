subscription_id     = <subscription_id>
name                                 = "mawani-automation-db"
resource_group_name                  = "rg-ccsautomation-nonprod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/8a5908cd-e907-473a-9c94-748bd2347176/resourceGroups/rg-ccsautomation-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ccsdev-nonprod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-ccsautomation-nonprod"
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
  "Application Name" : "CCS-DEV",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}