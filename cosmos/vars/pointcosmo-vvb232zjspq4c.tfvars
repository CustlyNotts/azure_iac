subscription_id     = <subscription_id>
name                            = "pointcosmo-vvb232zjspq4c"
resource_group_name             = "Rgsyskitpoint"
offer_type                      = "Standard"
kind                            = "GlobalDocumentDB"
#mongo_server_version            = "3.6"
enable_multiple_write_locations = false
enable_automatic_failover       = false
additional_capabilities         = []
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
private_endpoint_subnet_ids = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rgsyskitpoint/providers/Microsoft.Network/virtualNetworks/SysKitPoint/subnets/default"]
private_dns_zone_name                = ["privatelink.documents.azure.com"]
private_dns_zone_resource_group_name = "rgsyskitpoint"
#private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "CosmosPrivateConnection"
service_connection_name = "CosmosPrivateConnection"
private_connection_resource_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rgsyskitpoint/providers/Microsoft.DocumentDB/databaseAccounts/pointcosmo-vvb232zjspq4c"
subresource_names = ["Sql"]
tags = {
  "Application Name": "Syskit",
  "Application Owner": "",
  "ENV": "PROD",
  "Creator": "08f73da701e5419eb83225ec374761d2"
}
