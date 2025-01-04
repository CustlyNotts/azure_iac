
subscription_id     = <subscription_id>
name                          = "staccountproduction"
resource_group_name           = "rg-accountsproduction"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "RAGRS"
public_network_access_enabled     = true
min_tls_version               = "TLS1_2"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true

static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}

tags                          = {"Application Name": "Mawani", "Application Owner": "Daniel Stuart / pradeesh raju", "ENV": "PROD", "PublicAccessAllowed": "RITM0080785", "PublicAccessInfo": "Currently used in bitbucket for deployment of angular apps."} 
