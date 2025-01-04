subscription_id     = <subscription_id>
name                              = "strgdmdev"
resource_group_name               = "rg-ecommercedragonmart-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
infrastructure_encryption_enabled = true
tags = {
  "Application Name" : "DragonMart",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}