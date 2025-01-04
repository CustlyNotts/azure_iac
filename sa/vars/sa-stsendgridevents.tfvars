
subscription_id     = <subscription_id>
name                          = "stsendgridevents"
resource_group_name           = "rg-sendgrid-events"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
enable_https_traffic_only         = true
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true
tags                          = {"Application Name": "Sendgrid", "Application Owner": "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae", "ENV": "DEV", "PublicAccessAllowed": "RITM0080785", "PublicAccessInfo": "private container , Used by new relic and Sendgrid for pushing events"} 
