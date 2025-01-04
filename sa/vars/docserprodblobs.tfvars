subscription_id     = <subscription_id>
name                              = "docserprodblobs"
resource_group_name               = "document-service-prod-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "GRS"
soft_delete_enabled               = true
delete_retention_days             = 346
container_delete_retention_days   = 7
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = false
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
restore_policy_days               = 341
versioning_enabled                = true
bypass                            = ["AzureServices"]
public_network_access_enabled     = true
cors_rule = [
  {
    allowed_origins    = ["cargoes.com"]
    allowed_methods    = ["GET", "OPTIONS", "HEAD"]
    allowed_headers    = ["*"]
    exposed_headers    = ["*"]
    max_age_in_seconds = 5
  },
]
tags = {
  "Application Name" : "Document Service",
  "Application Owner" : "Jay Li/Jayakrishna Alwar",
  "ENV" : "PROD",
  "Exemption Reason" : "Creating SAS token based URLs for customers should download the documents",
  "PrivitizationExemption" : "True"
}