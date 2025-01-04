subscription_id     = <subscription_id>
name                            = "ecomm-pds-test"
resource_group_name             = "rg-ecommerce-dev"
offer_type                      = "Standard"
enable_free_tier                = true
location                        = "westeurope"
kind                            = "MongoDB"
mongo_server_version            = "3.6"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses"]
consistency_level               = "Session"
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Periodic"
geo_locations = [
  {
    geo_location      = "westeurope"
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
  "rge-ecomm-pds-test": "dev, test and staging",
  "hidden-cosmos-mmspecial": "",
  "CosmosAccountType": "Non-Production",
  "Creator": "Saurabh Choudhary",
  "Application Name": "Ecommerce (Dubuy & DM)",
  "Application Owner": "Arup Sarkar",
  "ENV": "DEV"
}
