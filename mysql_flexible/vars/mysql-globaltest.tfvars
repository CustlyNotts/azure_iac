subscription_id     = <subscription_id>
name                                 = "mysql-globaltest"
resource_group_name                  = "rg-global-test"
mysql_version                        = "5.7"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "sqladmin"
delegated_subnet_id                  = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-global-infra-nonprod"
auto_grow_enabled                    = true
iops                                 = "492"
size_gb                              = "64"
io_scaling_enabled                   = true
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "RITM": "RITM0055483",
        "Application Name": "global",
        "Application Owner": "Daniel Stuart/Linu Joseph/Pradeesh Raju",
        "ENV": "TESTING",
        "scheduler": "off=(M-F,20);on=(M-F,8);tz=Asia/Dubai"
}
identity_type = "UserAssigned"
identity_ids = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]
zone = "1"