subscription_id     = <subscription_id>
name                     = "strgecompds"
resource_group_name      = "rg-ecommerce-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
delete_retention_days    = 35
#container_delete_retention_days = 7
change_feed_enabled               = true
versioning_enabled                = true
restore_policy_days               = 30
all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = true

tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}