
subscription_id     = <subscription_id>
name                          = "stcdnbcotest001"
resource_group_name           = "rg-bcotest-001"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = false
min_tls_version               = "TLS1_0"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
enable_https_traffic_only         = false
static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}


#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true
tags                          = {"subscription": "dtworld", "department": "dtworld", "region": "uaenorth", "project": "bco", "env": "TESTING", "resource": "storage", "Application Name": "BCOTEST 001", "Application Owner": "hussain.hashimi@dpworld.com"} 
