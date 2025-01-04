subscription_id     = <subscription_id>
name                              = "asposestgprod"
resource_group_name               = "document-service-prod-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "GRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = false
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
versioning_enabled                = false
bypass                            = ["AzureServices"]
public_network_access_enabled     = true
tags = {
  "app-name" : "document-service",
  "app-owner" : "Jayakrishna Alwar/Jay Li",
  "app-type" : "web",
  "Application Name" : "Document Service",
  "Application Owner" : "Jay Li/Jayakrishna Alwar",
  "ENV" : "PROD",
  "Exemption Reason" : "This storage is used by an external library to store temporary files while processing documents."
  "PrivitizationExemption" : "True"
}