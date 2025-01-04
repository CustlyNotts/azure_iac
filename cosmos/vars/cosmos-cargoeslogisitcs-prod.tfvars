subscription_id     = <subscription_id>
name                            = "cosmos-cargoeslogisitcs-prod"
resource_group_name             = "rg-cargoeslogistics-prod"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.2"
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses", "EnableServerless", "EnableMongo"]
consistency_level               = "Session"
enable_multiple_write_locations = false
enable_automatic_failover       = true
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Continuous7Days"
geo_locations = [
  {
    geo_location      = "UAE North"
    failover_priority = 0
    zone_redundant    = false
  }
]
public_network_access_enabled        = false
is_virtual_network_filter_enabled    = false
subnet_ids                           = []
private_endpoint_subnet_ids          = []
private_dns_zone_name                = []
private_dns_zone_resource_group_name = "rg-cargoeslogistics-infra-prod"
private_dns_zone_enabled             = false
tags = {
  
  "CosmosAccountType" : "Production",
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Ravi Pandey/Utkarsh",
  "ENV" : "PROD"
}