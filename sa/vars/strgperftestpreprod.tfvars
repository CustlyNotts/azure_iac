subscription_id     = <subscription_id>
name                              = "strgperftestpreprod"
resource_group_name               = "DPWHyderabad"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = true
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
custom_domain_enabled             = false
change_feed_retention_in_days     = 0
bypass                            = ["AzureServices"]
tags = {
  "Application Name" : "Cargoes Platform",
  "Application Owner" : "Multiple teams (Ravi/Jaya/Mostafa/Jabeer)",
  "ENV" : "STAGING"
}