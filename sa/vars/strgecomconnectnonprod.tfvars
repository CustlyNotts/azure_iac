subscription_id     = <subscription_id>
name                              = "strgecomconnectnonprod"
resource_group_name               = "rg-ecommercedubuy-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Dubuy",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}