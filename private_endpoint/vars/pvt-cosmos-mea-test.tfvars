#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pvt-cosmos-mea-test"
pe_resource_group_name          = "rg-mea-test"
subnet_id                       = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common"
private_service_connection_name = "pvt-cosmos-mea-test_908b33b1-659c-42b0-9533-51cff09ed021"
manual_connection               = false
pdz_name                        = [""]
#private_dns_zone_group_name     = "default"
#private_dns_zone_ids            = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-prod/providers/Microsoft.Network/privateEndpoints/ep-mongodb-global-prod"]
pdz_resource_group_name       = [""]
pdz_link_name                 = [""]
virtual_network_id            = [""]
linked_pdz_name               = [""]
vlink_resource_group_name     = [""]
sub_resource_id               = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourcegroups/rg-mea-test/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-mea-test"
sub_resource_names            = ["MongoDB"]
azure_private_dns_zone_name   = ""
custom_network_interface_name = ""
pdz_counter                   = 0
#vlink_counter                   = 0
tags = { "Application Name" : "mea",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
"ENV" : "TESTING" }
