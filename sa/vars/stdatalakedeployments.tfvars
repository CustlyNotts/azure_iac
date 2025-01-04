subscription_id     = <subscription_id>
name                              = "stdatalakedeployments"
resource_group_name               = "rg-ba-lake-prod-uaenorth"
account_tier                      = "Standard"
account_kind                      = "BlobStorage"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Data lake",
  "Application Owner" : "Ramanpreet Singh",
  "ENV" : "PROD"
}