subscription_id     = <subscription_id>
name                                 = "mysql-rundeck-bt-prod-dr"
resource_group_name                  = "rg-btprod-dr"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-dr/providers/Microsoft.Network/virtualNetworks/vnet-bt-dr/subnets/snet-commonflex-dr"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-btinfra-dr"
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
  "Application Name" : "CCS-Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR"
}