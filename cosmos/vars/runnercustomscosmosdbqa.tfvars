subscription_id     = <subscription_id>
name                            = "runnercustomscosmosdbqa"
resource_group_name             = "rg_cargoesRunner_qa"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.0"
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
private_endpoint_subnet_ids = ["/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnernonprod/subnets/Snet-QA"]
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "pe-runnercustomscosmosdbqa"
service_connection_name = "pe-runnercustomscosmosdbqa_c85a16ba-4af1-41da-b187-d0cc3920f03e"
private_connection_resource_id = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourcegroups/rg_cargoesRunner_qa/providers/Microsoft.DocumentDB/databaseAccounts/runnercustomscosmosdbqa"
tags = {
  "defaultExperience": "Azure Cosmos DB for MongoDB API",
  "hidden-cosmos-mmspecial": "",
  "Application Name": "Cargoes Runner",
  "Application Owner": "Jabeer Yusuf",
  "ENV": "QA"
}
