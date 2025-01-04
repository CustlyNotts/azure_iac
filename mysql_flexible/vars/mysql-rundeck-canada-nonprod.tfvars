subscription_id     = <subscription_id>
name                                 = "mysql-rundeck-canada-nonprod"
resource_group_name                  = "rg-canadarundeck-nonprod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cargoscanada-test"
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
  "Application Name" : "CCS-Canada",
  "Application Owner" : "Daniel Stuart/Linu/Pradeesh Raju",
  "ENV" : "UAT"
}