#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "mysql-accounts-preprod"
pe_resource_group_name          = "rg-accountspreprod"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/virtualNetworks/vnet-accounts-preprod/subnets/snet-accounts-s2-preprod"
private_service_connection_name = "mysql-accounts-preprod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-accountspreprod"]
pdz_link_name                   = ["w6kouaewghnag", "z46szcsrccihc"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/virtualNetworks/vnet-accounts-preprod", "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/virtualNetworks/vnet-accountsuat"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-accountspreprod"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.DBforMySQL/servers/mysql-accounts-preprod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags =  {
        "Application Name": "Accounts",
        "Application Owner": "Chinnayya Nalla",
        "ENV": "PREPROD"
}