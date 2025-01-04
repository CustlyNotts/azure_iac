
subscription_id     = <subscription_id>
name                          = "staccountspreprod"
resource_group_name           = "rg-accountspreprod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_2"
infrastructure_encryption_enabled = true
allow_nested_items_to_be_public   = true
#cross_tenant_replication_enabled = "false"
all_network_access_enabled = true
allowed_ips = []
bypass      = ["AzureServices"]


static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}
tags                          = {"Application Owner": "Chinnayya Nalla", "Application Name": "Accounts", "ENV": "PREPROD", "PublicAccessAllowed": "RITM0078114", "PublicAccessInfo": "Exception: Currently used in bitbucket for deployment of angular apps. Lovely to create separate private SA for sensitive files."} 
