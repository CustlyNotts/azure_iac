subscription_id     = <subscription_id>
name                           = "psql-ecommerce-nonprod"
resource_group_name            = "rg-ecommerce-dev"
virtual_network                = "vnet-ecommerce-nonprod"
virtual_network_resource_group = "rg-ecommerce-infra-nonprod"
subnet                         = "snet-ecomm-flexibleserver-dev"
postgresql_version             = "15"
sku_name                       = "B_Standard_B4ms"
administrator_login            = "psqladmin"
administrator_password         = "psAdmin@123456"
storage_mb                     = 131072
private_dns_zone_id            = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/privateDnsZones/pg-ecommdubuyconnect-nonprod.private.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecomm-flexibleserver-dev"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
        "Application Name"  = "Ecommerce (Dubuy & DM)"
        "Application Owner" = "Arup Sarkar" 
        "ENV"               = "DEV"
        "RITM"              = "RITM0064165"
}