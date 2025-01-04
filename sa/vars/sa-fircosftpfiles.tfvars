subscription_id     = <subscription_id>
name                          = "fircosftpfiles"
location                      = "uaenorth"
resource_group_name           = "rg-tradefinance-firco-uat"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = false
account_kind                  = "Storage"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
tags                          = {"Application Name": "tradefinacefirco",
        "Application Owner": "Priyank Jain",
        "ENV": "UAT",
        "Privitization Exemption": "True",
        "Exemption Reason": "Storage account used by Logic app and it doesnt support vnet integration"
    
        } 
