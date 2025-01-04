subscription_id     = <subscription_id>
name                     = "strgecommftpfiles"
resource_group_name      = "rg-ecommercedragonmart-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
delete_retention_days    = 7
#container_delete_retention_days = 7
restore_policy_days               = 341
all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false

tags = {
  "Application Name" : "Dubuy",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}