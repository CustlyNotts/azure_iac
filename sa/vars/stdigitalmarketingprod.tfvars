subscription_id     = <subscription_id>
name                              = "stdigitalmarketingprod"
resource_group_name               = "rg-digitalemail-prod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = false
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
versioning_enabled                = false
bypass                            = ["AzureServices"]
tags = {
  "Application Owner" : "Bilal Adham",
  "ENV" : "PROD",
  "Application Name" : "Digital Marketing",
  "RITM" : "RITM0090611",
  "PublicAccessInfo" : "Public Access required for CDN",
  "PublicAccessAllowed" : "RITM0090611"
}