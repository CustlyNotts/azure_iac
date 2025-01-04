subscription_id     = <subscription_id>
name                              = "strgdubuyakamaipreprod"
resource_group_name               = "rg-ecommerce-preprod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
custom_domain_enabled             = true
custom_domain_name                = "assets-preprod.dubuy.com"
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
  "Application Name" : "Ecommerce (Dubuy)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PREPROD"
}