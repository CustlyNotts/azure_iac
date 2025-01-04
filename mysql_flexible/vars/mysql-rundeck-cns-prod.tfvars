subscription_id     = <subscription_id>
name                                 = "mysql-rundeck-cns-prod"
resource_group_name                  = "rg-cnsrundeck-prod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B1s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-mysql-commonflex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cnspriendpoint"
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