subscription_id     = <subscription_id>
name                            = "ecom-oms-nonprod"
resource_group_name             = "rg-ecommerce-dev"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "3.6"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = ["EnableMongo", "DisableRateLimitingResponses"]
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
is_virtual_network_filter_enabled = false
subnet_ids = []
private_endpoint_subnet_ids = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecommerce-dev"]
custom_network_interface_name = "ecommerce-nonprod-oms-cosmos-nic"
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
private_endpoint_import = false
private_endpoint_name = "ecommerce-nonprod-oms-cosmos"
service_connection_name = "ecommerce-nonprod-oms-cosmos"
private_connection_resource_id = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-dev/providers/Microsoft.DocumentDB/databaseAccounts/ecom-oms-nonprod"
tags = {
  "Application Name": "Ecommerce (Dubuy & DM)",
  "Application Owner": "Arup Sarkar",
  "ENV": "DEV"
}
