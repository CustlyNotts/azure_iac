subscription_id     = <subscription_id>
name                = "mysql-meatest"
resource_group_name = "rg-mea-test"
mysql_version       = "5.7"
sku_name            = "B_Standard_B2s"
administrator_login = "mawanidba"
#fqdn = "mysql-meatest.mysql.database.azure.com"
delegated_subnet_id                  = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-mea-test"
auto_grow_enabled                    = true
iops                                 = "492"
size_gb                              = "64"
zone                                 = "3"
io_scaling_enabled                   = false
identity_type                        = "UserAssigned"
identity_ids                         = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]

mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "RITM" : "RITM0053317",
  " ENV" : "TESTING",
  "Application Name" : "mea",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "TESTING",
  "scheduler" : "off=(M-F,21);on=(M-F,8);tz=Asia/Dubai"
}