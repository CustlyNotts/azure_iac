#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pvt-mearundeck-nonprod"
pe_resource_group_name          = "rg-mearundeck-nonprod"
subnet_id                       = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common"
private_service_connection_name = "pvt-mearundeck-nonprod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-test/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-mea-test"]
pdz_link_name                   = ["uwelnug7dusq6"]
virtual_network_id              = ["/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-mea-test"]
sub_resource_id                 = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mearundeck-nonprod/providers/Microsoft.DBforMySQL/servers/mysql-mearundeck-nonprod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = "pvt-mearundeck-nonprod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {
  "Application Name"  = "rundeck"
  "Application Owner" = "Daniel Stuart / pradeesh raju"
  "ENV"               = "DEV"
}