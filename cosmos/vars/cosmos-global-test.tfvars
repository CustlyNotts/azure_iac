subscription_id     = <subscription_id>
name                            = "cosmos-global-test"
resource_group_name             = "rg-global-test"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.2"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses", "EnableServerless"]
consistency_level               = "Session"
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Continuous7Days"
geo_locations = [
  {
    geo_location      = "uaenorth"
    failover_priority = 0
    zone_redundant    = false
  }
]
public_network_access_enabled     = true
is_virtual_network_filter_enabled = true
subnet_ids = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common"]
private_endpoint_subnet_ids = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common"]
private_dns_zone_name                = ["privatelink.mongo.cosmos.azure.com"]
private_dns_zone_resource_group_name = "rg-global-infra-nonprod"
#private_dns_zone_enabled = false
private_endpoint_import   = true
private_endpoint_name = "pvt-cosmosDB"
service_connection_name = "pvt-cosmosDB_26beeb78-b2b4-4f07-a4ef-aa85a80c9031"
private_connection_resource_id = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourcegroups/rg-global-test/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-global-test"
tags = {
  "defaultExperience": "Azure Cosmos DB for MongoDB API",
  "hidden-cosmos-mmspecial": "",
  "Application Name": "global",
  "Application Owner": "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV": "TESTING"
}
