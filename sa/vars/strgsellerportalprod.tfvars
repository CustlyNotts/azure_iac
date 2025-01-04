subscription_id     = <subscription_id>
name                            = "strgsellerportalprod"
resource_group_name             = "rg-ecommerce-prod"
account_tier                    = "Standard"
account_kind                    = "BlobStorage"
account_replication_type        = "RAGRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = false
tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}