subscription_id     = <subscription_id>
name                              = "Strgcloudflareprod"
resource_group_name               = "DPW_Global_SOC_Resource_Group"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Cloudflare",
  "Application Owner" : "Swapnil Rajmane",
  "ENV" : "PROD"
}