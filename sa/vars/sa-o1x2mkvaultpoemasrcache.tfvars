subscription_id     = <subscription_id>
name                          = "o1x2mkvaultpoemasrcache"
location                      = "uaenorth"
resource_group_name           = "Rg-Rostima-DR"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = false
account_kind                  = "Storage"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = false
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_0"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
tags                          = {"Application Name": "Poems Application",
        "Application Owner": "Moinudeen AliAzad",
        "ENV": "PROD",
        "PublicAccessAllowed": "RITM0078631",
        "PublicAccessInfo": "This is used for vm replication dr purpose"
        } 
