subscription_id     = <subscription_id>
name                     = "stcargoescanadadrlogs"
resource_group_name      = "RG-cargoescanadaprod-DR"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
soft_delete_enabled      = false
large_file_share_enabled = true
#container_delete_retention_days = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false

all_network_access_enabled = false
#network_rules    = "Deny"

allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "CCS-Canada",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR"
}
