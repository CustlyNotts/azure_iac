
subscription_id     = <subscription_id>
name                          = "stmawanijars"
resource_group_name           = "rg-globalmawani"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "RAGRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
access_tier                       = "Hot"
#cross_tenant_replication_enabled = "false"
infrastructure_encryption_enabled = false
enable_https_traffic_only         = true
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true
location                          = "eastus"

static_website = {
       
}
tags                          = {"Application Name": "Mawani CNS", "Application Owner": "Daniel Stuart / pradeesh raju", "ENV": "PROD", "PublicAccessAllowed": "RITM0080785", "PublicAccessInfo": "Used for storing build from azure devops pipeline & bitbucket, Need to find a proper solution before doing any changes. Currently making it private not possible."} 
