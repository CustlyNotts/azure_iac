subscription_id     = <subscription_id>
name                     = "strgecomuaeprd"
resource_group_name      = "rg-ecommercedragonmart-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
delete_retention_days    = 346
#container_delete_retention_days = 7
restore_policy_days               = 341
all_network_access_enabled        = true
enable_https_traffic_only         = false
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
change_feed_enabled               = true
versioning_enabled                = true
min_tls_version                   = "TLS1_0"
cors_rule = [
  {
    allowed_origins    = ["*"]
    allowed_methods    = ["GET"]
    allowed_headers    = ["*"]
    exposed_headers    = ["access-control-allow-origin"]
    max_age_in_seconds = 200
  },
]
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Production",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/UAT",

]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "DragonMart",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}