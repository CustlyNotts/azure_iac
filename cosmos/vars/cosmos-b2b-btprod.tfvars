subscription_id     = <subscription_id>
name                            = "cosmos-b2b-btprod"
resource_group_name             = "rg-btprod-devops"
offer_type                      = "Standard"
kind                            = "GlobalDocumentDB"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableServerless"]
consistency_level               = "Session"
max_interval_in_seconds         = 5
max_staleness_prefix            = 100
backup_policy                   = "Periodic"
geo_locations = [
  {
    geo_location      = "canada central"
    failover_priority = 0
    zone_redundant    = false
  }
]
public_network_access_enabled        = false
is_virtual_network_filter_enabled    = false
subnet_ids                           = []
private_endpoint_subnet_ids          = []
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled             = false
tags = {
  "defaultExperience" : "Core (SQL)",
  "project" : "b2b",
  "hidden-cosmos-mmspecial" : "",
  "CosmosAccountType" : "Non-Production",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
