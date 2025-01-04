#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pvt-mearundeck-prod"
pe_resource_group_name          = "rg-mearundeck-prod"
subnet_id                       = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-mea-prod/subnets/snet-common"
private_service_connection_name = "pvt-mearundeck-prod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-prod/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-mea-prod"]
pdz_link_name                   = ["jtjauoeewee2q"]
virtual_network_id              = ["/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-mea-prod"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-mea-prod"]
sub_resource_id                 = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mearundeck-prod/providers/Microsoft.DBforMySQL/servers/mysql-mearundeck-prod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = "pvt-mearundeck-prod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0
/*
tags = {         "Application Name"  = "mea"
         "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
         "ENV"               = "PROD"}
*/