subscription_id     = <subscription_id>
name                              = "ticketserblobsdev"
resource_group_name               = "ticket-service-dev-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
versioning_enabled                = false
bypass                            = ["AzureServices"]
tags = {
  "app-name" : "ticket-service",
  "app-owner" : "Jayakrishna Alwar/Jay Li",
  "app-type" : "web",
  "Application Name" : "datachain",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "DEV",
  "Exemption Reason" : "Public Access required for Development activities",
  "PrivitizationExemption" : "True"
}