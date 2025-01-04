subscription_id     = <subscription_id>
name                            = "ecomm-dm-test"
resource_group_name             = "rg-ecommercedragonmart-dev"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.0"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses"]
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
private_endpoint_subnet_ids = []
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
tags = {
  "defaultExperience": "Azure Cosmos DB for MongoDB API",
  "hidden-cosmos-mmspecial": "",
  "Application Name": "DragonMart",
  "Application Owner": "Vishank/Sandeep",
  "ENV": "DEV"
}
