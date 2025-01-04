
subscription_id     = <subscription_id>
name                          = "storageaccountrgsenb190"
resource_group_name           = "rg-sendgrid-events"
account_tier                  = "Standard"
account_kind                  = "Storage"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = false
min_tls_version               = "TLS1_2"
#cross_tenant_replication_enabled = "false"
infrastructure_encryption_enabled = false
enable_https_traffic_only         = true
allowed_ips = []
bypass      = ["AzureServices"]
tags                          = {"Application Name": "Sendgrid", "Application Owner": "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae", "ENV": "DEV"} 
