
subscription_id     = <subscription_id>
name                          = "strgcommunitysiteprod"
resource_group_name           = "rg-communitysite-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "GRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
infrastructure_encryption_enabled = false
enable_https_traffic_only         = true

allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true

static_website = {
  index_document = "index.html"
    }

tags                          = {"Application Name": "", "Application Owner": "Daniel", "ENV": "PROD", "PublicAccessAllowed": "RITM0080785", "PublicAccessInfo": "its CDN Static Website we cannot make private"} 
