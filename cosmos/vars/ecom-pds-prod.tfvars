subscription_id     = <subscription_id>
name                            = "ecom-pds-prod"
resource_group_name             = "rg-ecommerce-prod"
offer_type                      = "Standard"
kind                            = "MongoDB"
mongo_server_version            = "3.6"
enable_multiple_write_locations = false
enable_automatic_failover       = true
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
is_virtual_network_filter_enabled = true
subnet_ids = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-aksnode-prod", "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-akspod-prod", "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-prod", "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr/subnets/snet-ecommerce-prod-dr"]
private_endpoint_subnet_ids = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-prod"]
custom_network_interface_name = "aks-ecommerce-prod-ecom-pds-cosmos-nic"
private_dns_zone_name                = []
private_dns_zone_resource_group_name = ""
private_dns_zone_enabled = false
private_endpoint_import = true
private_endpoint_name = "aks-ecommerce-prod-ecom-pds-cosmos"
service_connection_name = "aks-ecommerce-prod-ecom-pds-cosmos"
private_connection_resource_id = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-prod/providers/Microsoft.DocumentDB/databaseAccounts/ecom-pds-prod"
tags = {
  "Application Name": "Ecommerce (Dubuy & DM)",
  "Application Owner": "Shaloof",
  "ENV": "PROD"
}
