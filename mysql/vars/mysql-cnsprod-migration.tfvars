subscription_id     = <subscription_id>
name                              = "mysql-cnsprod-migration"
resource_group_name               = "rg-cnstest"
administrator_login               = "mysqladmin"
administrator_login_password      = "Admin@123456"
mysql_db_sku                      = "GP_Gen5_32"
storage_mb                        = 5120
mysql_db_version                  = 5.7
auto_grow_enabled                 = true
backup_retention_days             = 7
geo_redundant_backup_enabled      = false
infrastructure_encryption_enabled = false
public_network_access_enabled     = true
ssl_enforcement_enabled           = true
ssl_minimal_tls_version_enforced  = "TLS1_2"

use_existing_pe                 = false
use_existing_dns                = true
pe_resource_group_name          = ["rg-cnstest"]
subnet_id                       = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cns-ep"]
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_service_connection_name = ["mysql-cnsprod-migration-pe-connection"]
private_endpoint_name           = ["pe-mysql-cnsprod-migration"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnspriendpoint/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-cnspriendpoint"]
virtual_network_id              = []
linked_pdz_name                 = []
pdz_link_name                   = []
vlink_resource_group_name       = []
vlink_counter                   = 0
pe_counter                      = 1
pdz_counter                     = 0
custom_network_interface_name   = []