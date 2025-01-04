#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "uaecentral"
use_existing_dns                = true
private_endpoint_name           = "mysql-accounts-prod-dr"
pe_resource_group_name          = "rg-accounts-dr"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/virtualNetworks/vnet-accounts-dr/subnets/snet-common"
private_service_connection_name = "mysql-accounts-prod-dr"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-accounts-infra-dr"]
pdz_link_name                   = ["34yakov5kwa62", "vemmjwst4o2is"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-infra-dr/providers/Microsoft.Network/virtualNetworks/vnet-accounts-dr", "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/virtualNetworks/vnet-account-dev"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-accounts-infra-dr"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accounts-dr/providers/Microsoft.DBforMySQL/servers/mysql-accounts-prod-dr"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = "mysql-accounts-prod-dr-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags =  {
        "Application Name": "Accounts",
        "Application Owner": "Daniel Stuart/Linu Joseph/Pradeesh Raju",
        "ENV": "dr"
}