subscription_id     = <subscription_id>
name                            = "cosmos-cargoestms-prod"
resource_group_name             = "rg-cargoestms-prod"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "4.2"
enable_multiple_write_locations = false
enable_automatic_failover       = true
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
is_virtual_network_filter_enabled = true
subnet_ids = ["/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-prod/subnets/snet-cargoestms-prod"]
private_endpoint_subnet_ids = ["/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-prod/subnets/snet-cargoestms-prod"]
custom_network_interface_name = "aks-cargoestms-prod-cosmos-cargoestms-prod-nic"
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "aks-cargoestms-prod-cosmos-cargoestms-prod"
service_connection_name = "aks-cargoestms-prod-cosmos-cargoestms"
private_connection_resource_id = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-cargoestms-prod"
tags = {
  "Application Name": "Cargoes TMS",
  "Application Owner": "Shiv Suthar",
  "ENV": "PROD"
}
