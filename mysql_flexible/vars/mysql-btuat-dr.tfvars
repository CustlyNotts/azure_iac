subscription_id     = <subscription_id>
name                                 = "mysql-btuat-dr"
resource_group_name                  = "rg-btuat"
mysql_version                        = "5.7"
sku_name                             = "GP_Standard_D2ds_v4"
administrator_login                  = "mysqladmin"
location                             = "southindia"
delegated_subnet_id                  = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-dr/providers/Microsoft.Network/virtualNetworks/vnet-bt-dr/subnets/snet-uatcommonflex-dr"
private_dns_zone_name                = "mysql-btuat-dr.private.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-btinfra-dr"
auto_grow_enabled                    = true
iops                                 = "726"
size_gb                              = "142"
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
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}
