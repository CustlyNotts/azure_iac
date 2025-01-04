subscription_id     = <subscription_id>
name                              = "stsfsakamaiprod"
resource_group_name               = "rg-ecommerce-prod"
account_tier                      = "Standard"
account_kind                      = "BlobStorage"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Ecommerce (SFS)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
  "PublicAccessAllowed" : "RITM0079482"
  "PublicAccessInfo" : "For SFS Akamai"
}