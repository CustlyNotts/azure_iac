subscription_id     = <subscription_id>
name                              = "strgmanasahtest"
resource_group_name               = "rg-ecommercedragonmart-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
change_feed_enabled               = true
versioning_enabled                = true
all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
restore_policy_days               = 6
bypass                            = ["AzureServices"]
allowed_ips                       = ["147.243.0.0/16"]
enable_https_traffic_only         = false
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
  #   "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Production",
  # "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/UAT",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Critical_Prod"

]

tags = {
  "Application Name" : "DragonMart",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}