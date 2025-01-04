subscription_id     = <subscription_id>
name                     = "strgdubuytest"
resource_group_name      = "rg-ecommercedubuy-preprod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true

all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false

tags = {
  "Application Name" : "Dubuy",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PREPROD"
}