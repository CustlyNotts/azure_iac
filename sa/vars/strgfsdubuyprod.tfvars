subscription_id     = <subscription_id>
name                              = "strgfsdubuyprod"
resource_group_name               = "rg-ecommercedubuy-prod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
all_network_access_enabled        = false
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
bypass                            = ["AzureServices"]
tags = {
  "Application Name" : "Dubuy",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}