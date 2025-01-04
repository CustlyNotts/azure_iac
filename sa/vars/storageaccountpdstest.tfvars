subscription_id     = <subscription_id>
name                              = "storageaccountpdstest"
resource_group_name               = "rg-ecommerce-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}