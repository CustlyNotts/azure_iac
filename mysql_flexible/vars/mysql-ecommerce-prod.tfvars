subscription_id     = <subscription_id>
name                                 = "mysql-ecommerce-prod-01"
resource_group_name                  = "rg-ecommerce-prod"
mysql_version                        = "8.0.21"
sku_name                             = "GP_Standard_D2ads_v5"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-mysqlflexibleserver-prod"
private_dns_zone_name                = "mysql-ecommerce-prod.private.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-ecommerce-infra-prod"
auto_grow_enabled                    = true
io_scaling_enabled                   = false
iops                                 = "500"
size_gb                              = "64"
zone                                 = "2"
identity_type                        = "UserAssigned"
identity_ids                         = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}

