subscription_id     = <subscription_id>
name                     = "stcnsprod"
resource_group_name      = "rg-cnsprod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = false
#change_feed_enabled            = true
#versioning_enabled             = true
#large_file_share_enabled        = true
delete_retention_days           = 346
container_delete_retention_days = null
restore_policy_days             = 341
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_0"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
]

all_network_access_enabled = true

allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "location" : "uksouth",
  "env" : "PROD",
  "displayName" : "stcnsprod",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}