subscription_id     = <subscription_id>
name                           = "psql-ecommerce-prod-dr"
resource_group_name            = "rg-ecommerce-prod-dr"
virtual_network                = "vnet-ecommerce-prod-dr"
virtual_network_resource_group = "rg-ecommerce-infra-prod-dr"
subnet                         = "snet-ecommerce-flexibleserver-prod-dr"
postgresql_version             = "14"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "psqladmin"
administrator_password         = "psAdmin@123456"
pdz_resource_group_name        = "rg-ecommerce-infra-prod-dr"
pdz_vnet_link                  = "pkulkhp2aknmk"
storage_mb                     = 262144
private_dns_zone_id            = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/privateDnsZones/psql-ecommerce-prod-dr.private.postgres.database.azure.com"
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr/subnets/snet-ecommerce-flexibleserver-prod-dr"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}


tags = {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Arup Sarkar",
        "ENV": "DR",
        "RITM": "RITM0064165"
}
