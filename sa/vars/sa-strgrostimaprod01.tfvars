subscription_id     = <subscription_id>
name                          = "strgrostimaprod01"
location                      = "uaenorth"
resource_group_name           = "Rg-Rostima-Prod"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = false
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = false
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
tags                          = {"Application Name": "Rostima",
        "Application Owner": "Hasaan Malik",
        "ENV": "PROD"
        } 
