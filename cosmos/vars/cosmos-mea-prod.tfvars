subscription_id     = <subscription_id>
name                            = "cosmos-mea-prod"
resource_group_name             = "rg-mea-prod"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.2"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses", "EnableServerless"]
consistency_level               = "Session"
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Periodic"
geo_locations = [
  {
    geo_location      = "uaenorth"
    failover_priority = 0
    zone_redundant    = false
  }
]
public_network_access_enabled     = true
is_virtual_network_filter_enabled = false
subnet_ids = []
private_endpoint_subnet_ids = ["/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-mea-prod/subnets/snet-common"]
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "pvt-cosmos-mea-prod"
service_connection_name = "pvt-cosmos-mea-prod_5b08cc1e-1cdc-4b31-8be6-3f71512b201e"
private_connection_resource_id = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourcegroups/rg-mea-prod/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-mea-prod"
tags = {
 "defaultExperience": "Azure Cosmos DB for MongoDB API",
 "hidden-cosmos-mmspecial": "",
 "Application Name": "mea",
 "Application Owner": "Daniel Stuart/Linu Joseph/Pradeesh Raju",
 "ENV": "PROD"
}
