#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pvt-cosmos-mea-prod"
pe_resource_group_name          = "rg-mea-prod"
subnet_id                       = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-mea-prod/subnets/snet-common"
private_service_connection_name = "pvt-cosmos-mea-prod_5b08cc1e-1cdc-4b31-8be6-3f71512b201e"
manual_connection               = false
pdz_name                        = [""]
#private_dns_zone_group_name     = "default"
#private_dns_zone_ids            = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-prod/providers/Microsoft.Network/privateEndpoints/ep-mongodb-global-prod"]
pdz_resource_group_name       = [""]
pdz_link_name                 = [""]
virtual_network_id            = [""]
linked_pdz_name               = [""]
vlink_resource_group_name     = [""]
sub_resource_id               = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourcegroups/rg-mea-prod/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-mea-prod"
sub_resource_names            = ["MongoDB"]
azure_private_dns_zone_name   = ""
custom_network_interface_name = ""
pdz_counter                   = 0
#vlink_counter                   = 0
tags = { "Application Name" : "mea",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
"ENV" : "PROD" }
