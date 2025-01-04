subscription_id     = <subscription_id>
name                                 = "mysql-meauat"
resource_group_name                  = "rg-mea-uat"
mysql_version                        = "5.7"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "sqladmin"
delegated_subnet_id                  = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-mea-test"
auto_grow_enabled                    = true
iops                                 = "492"
size_gb                              = "64"
zone                                 = "1"
io_scaling_enabled                   = true
identity_type                        = "UserAssigned"
identity_ids                         = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]

mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "mea",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UAT",
  "scheduler" : "off=(M-F,21);on=(M-F,8);tz=Asia/Dubai"
}