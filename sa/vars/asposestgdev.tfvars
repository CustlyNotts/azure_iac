subscription_id     = <subscription_id>
name                              = "asposestgdev"
resource_group_name               = "document-service-development-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = true
versioning_enabled                = true
custom_domain_enabled             = false
bypass                            = ["AzureServices"]
tags = {
  "app-name" : "document-service",
  "app-type" : "Non Web",
  "Application Name" : "Document Service",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "Dev",
  "Exemption Reason" : "This storage is used by an external library to store temporary files while processing documents.",
  "PrivitizationExemption" : "True"
}