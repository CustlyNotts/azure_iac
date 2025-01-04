subscription_id     = <subscription_id>
name                              = "strgdubuypreprod"
resource_group_name               = "rg-ecommercedubuy-preprod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
all_network_access_enabled        = true
tags = {
  "Application Name" : "Ecommerce (Dubuy)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PREPROD"
}