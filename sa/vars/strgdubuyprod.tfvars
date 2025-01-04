subscription_id     = <subscription_id>
name                     = "strgdubuyprod"
resource_group_name      = "rg-ecommercedubuy-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
delete_retention_days    = 346
#container_delete_retention_days = 7
restore_policy_days               = 341
change_feed_enabled               = true
versioning_enabled                = true
all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
custom_domain_enabled             = true
custom_domain_name                = "assets.dubuy.com"
cors_rule = [
  {
    allowed_origins    = ["*"]
    allowed_methods    = ["GET"]
    allowed_headers    = ["*"]
    exposed_headers    = ["access-control-allow-origin"]
    max_age_in_seconds = 200
  },
]
tags = {
  "Application Name" : "Dubuy",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}