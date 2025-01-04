#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "ep-mysql-accounts-prod"
pe_resource_group_name          = "rg-accountsproduction"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-DTWorld/subnets/snet-common"
private_service_connection_name = "ep-mysql-accounts-prod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsproduction/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-accountsproduction"]
pdz_link_name                   = ["vnet-dtworld-prod"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-DTWorld"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-accountsproduction"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsproduction/providers/Microsoft.DBforMySQL/servers/mysql-accounts-prod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = "ep-mysql-accounts-prod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" = "Mawani"
  "Application Owner" = "Daniel Stuart / pradeesh raju"
  "ENV" = "PROD"
}
