subscription_id     = <subscription_id>
name                              = "strgapimbckup"
resource_group_name               = "rg-dpw-apim-nonprod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Azure APIM",
  "Application Owner" : "Shaloof Moopan",
  "ENV" : "DEV",
  "RITM": "RITM0101900",
  "PublicAccessInfo": "NoPublicAccessRequired"
}