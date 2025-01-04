subscription_id     = <subscription_id>
name                                 = "mysql-rundeck-cnsuat-dr"
resource_group_name                  = "rg-cnsuat-dr"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cns-infra-dr/providers/Microsoft.Network/virtualNetworks/vnet-cns-dr/subnets/snet-common-dr"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cns-infra-dr"
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
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR"
}