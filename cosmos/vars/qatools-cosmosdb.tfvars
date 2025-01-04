subscription_id     = <subscription_id>
name                            = "qatools-cosmosdb"
resource_group_name             = "rg-qatools"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.0"
enable_multiple_write_locations = false
enable_free_tier                = true
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses"]
consistency_level               = "Session"
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Periodic"
geo_locations = [
  {
    geo_location      = "uaecentral"
    failover_priority = 1
    zone_redundant    = false
  },
  {
    geo_location      = "uaenorth"
    failover_priority = 0
    zone_redundant    = false
  }
]
public_network_access_enabled     = true
is_virtual_network_filter_enabled = true
subnet_ids = ["/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-aksqatest", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-performancetesting", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-qatools02-node", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-qatools02-pod", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-qatools-dev", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/snet-qatools-prod", "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/vnet-qatools/subnets/sub-akscluster"]
private_endpoint_subnet_ids = ["/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.Network/virtualNetworks/Vnet-qatools/subnets/snet-qatools-dev"]
private_dns_zone_name                = ["privatelink.mongo.cosmos.azure.com"]
private_dns_zone_resource_group_name = "rg-qatools"
#private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "pvt-ep-cosmosdb"
service_connection_name = "pvt-ep-cosmosdb"
custom_network_interface_name = "pvt-ep-cosmosdb-nic"
private_connection_resource_id = "/subscriptions/43e324d8-d639-4436-80bf-7f2fc1ca94f2/resourceGroups/rg-qatools/providers/Microsoft.DocumentDb/databaseAccounts/qatools-cosmosdb"
tags = {
  "defaultExperience": "Azure Cosmos DB for MongoDB API",
  "ENV": "DEV",
  "Application Name": "QA Tools",
  "Application Owner": "Ritesh Singh/Sai Anudeep",
  "hidden-cosmos-mmspecial": ""
}
