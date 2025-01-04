subscription_id     = <subscription_id>
name                              = "mysql-ecommerce-prod-01"
resource_group_name               = "rg-ecommerce-prod"
administrator_login               = "mysqladmin"
administrator_login_password      = "Admin@123456"
mysql_db_sku                      = "Standard_D2ads_v5"
storage_mb                        = 64000
mysql_db_version                  = "8.0.21"
auto_grow_enabled                 = true
backup_retention_days             = 7
geo_redundant_backup_enabled      = false
infrastructure_encryption_enabled = false
public_network_access_enabled     = true
ssl_enforcement_enabled           = true
ssl_minimal_tls_version_enforced  = "TLS1_2"
use_existing_pe                   = false
use_existing_dns                  = true
pe_resource_group_name            = ["rg-ecommerce-infra-prod"]
subnet_id                         = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-mysqlflexibleserver-prod"]
manual_connection                 = false
pdz_name                          = ["privatelink.mysql.database.azure.com"]
private_service_connection_name   = ["mysql-ecommerce-prod-01"]
#private_endpoint_name             = ["ep-mysql-accounts-preprod"]
#private_dns_zone_group_name       = ["default"]
private_dns_zone_ids              = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/privateDnsZones/mysql-ecommerce-prod.private.mysql.database.azure.com"]
pdz_resource_group_name           = ["rg-ecommerce-infra-prod"]
virtual_network_id                = []
linked_pdz_name                   = []
pdz_link_name                     = []
vlink_resource_group_name         = []
vlink_counter                     = 0
pe_counter                        = 1
pdz_counter                       = 0
custom_network_interface_name     = []


tags = {

        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Arup Sarkar",
        "ENV": "PROD"
}