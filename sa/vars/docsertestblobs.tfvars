subscription_id     = <subscription_id>
name                              = "docsertestblobs"
resource_group_name               = "document-service-test-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 365
container_delete_retention_days   = 7
public_network_access_enabled     = true
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
versioning_enabled                = false
bypass                            = ["AzureServices"]
cors_rule = [
  {
    allowed_origins    = ["staging.cargoes.com"]
    allowed_methods    = ["GET", "HEAD", "OPTIONS"]
    allowed_headers    = ["*"]
    exposed_headers    = ["*"]
    max_age_in_seconds = 5
  },
]
tags = {
  "app-name" : "docume",
  "app-type" : "web",
  "Application Name" : "Document Service",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "env" : "TESTING",
  "Exemption Reason" : "Creating SAS token based URLs for customers should download the documents",
  "PrivitizationExemption" : "True"
}