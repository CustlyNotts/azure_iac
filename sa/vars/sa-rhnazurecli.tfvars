
subscription_id     = <subscription_id>
name                          = "rhnazurecli"
resource_group_name           = "rg-b2bdev"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = false
public_network_access_enabled = false
min_tls_version               = "TLS1_2"
#cross_tenant_replication_enabled = "false"
tags                          = {"ms-resource-usage": "azure-cloud-shell", "Application Name": "CCS", "Application Owner": "Asha chinaa", "ENV": "TESTING"} 
