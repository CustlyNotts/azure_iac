subscription_id     = <subscription_id>
name                                 = "mysql-ecomomsplatform-nonprod"
resource_group_name                  = "rg-ecommercedubuy-dev"
mysql_version                        = "8.0.21"
sku_name                             = "GP_Standard_D2ds_v4"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-mysql-flexibleserver-nonprod"
private_dns_zone_name                = "mysql-ecomomsplatform-nonprod.private.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-ecommerce-infra-nonprod"
auto_grow_enabled                    = true
io_scaling_enabled                   = true
iops                                 = "360"
size_gb                              = "20"
identity_type                        = "UserAssigned"
identity_ids                         = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/MC_rg-ecommerce-prod_aks-ecommerce-prod_uaenorth/providers/Microsoft.ManagedIdentity/userAssignedIdentities/azurepolicy-aks-ecommerce-prod", "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity", "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-db-managedidentity"]
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
    "Application Name": "Dubuy",
    "Application Owner": "Arup Sarkar",
    "ENV": "DEV"
}

zone = "1"
