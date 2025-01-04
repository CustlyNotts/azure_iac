#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pvt-cosmosDB"
pe_resource_group_name          = "rg-global-test"
subnet_id                       = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common"
private_service_connection_name = "pvt-cosmosDB_26beeb78-b2b4-4f07-a4ef-aa85a80c9031"
manual_connection               = false
pdz_name                        = ["privatelink.mongo.cosmos.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/privateDnsZones/privatelink.mongo.cosmos.azure.com"]
pdz_resource_group_name         = ["rg-global-infra-nonprod"]
pdz_link_name                   = ["eveo454bh2cna"]
virtual_network_id              = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod"]
linked_pdz_name                 = ["privatelink.mongo.cosmos.azure.com"]
vlink_resource_group_name       = ["rg-global-infra-nonprod"]
sub_resource_id                 = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourcegroups/rg-global-test/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-global-test"
sub_resource_names              = ["MongoDB"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = { "Application Name" : "global",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
"ENV" : "TESTING" }
