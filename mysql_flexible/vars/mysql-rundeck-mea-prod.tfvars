subscription_id     = <subscription_id>
name                                 = "mysql-rundeck-mea-prod"
resource_group_name                  = "rg-mearundeck-prod"
mysql_version                        = "8.0.21"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-mea-prod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-mea-prod"
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
  "Application Name" : "rundeck",
  "Application Owner" : "Daniel Stuart/Pradeesh Raju",
  "ENV" : "PROD"
}