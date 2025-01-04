subscription_id     = <subscription_id>
name                                 = "mysql-bt-test"
resource_group_name                  = "rg-btdemo"
mysql_version                        = "5.7"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnwhub/providers/Microsoft.Network/virtualNetworks/vnet-btnwhub/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-btnwhub"
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
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Pradeesh Raju",
  "ENV" : "UAT"
}