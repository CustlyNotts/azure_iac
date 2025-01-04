
subscription_id     = <subscription_id>
name                          = "stcdncrrdev001"
resource_group_name           = "rg-crrdev-001"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
enable_https_traffic_only         = false
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
infrastructure_encryption_enabled = false
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true

static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}
tags                          = {"subscription": "dtworld", "department": "dtworld", "region": "uaenorth", "project": "crr", "env": "DEV", "resource": "storage", "Application Name": "CRRDEV 001", "Application Owner": "hussain.hashimi@dpworld.com", "PublicAccessAllowed": "RITM0078114", "PublicAccessInfo": "this doesn't store any sensitive data, just some static files."} 
