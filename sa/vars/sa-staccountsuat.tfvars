
subscription_id     = <subscription_id>
name                          = "staccountsuat"
resource_group_name           = "rg-accountsuat"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
enable_https_traffic_only         = false
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true

static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}
tags                          = {"location": "uaenorth", "env": "DEV", "displayName": "staccountsuat", "Application Name": "aks", "Application Owner": "Shaloof/Nowphal", "PublicAccessAllowed": "RITM0078114", "PublicAccessInfo": "Currently used in bitbucket for deployment of angular apps. Lovely to create separate private SA for sensitive files."} 
