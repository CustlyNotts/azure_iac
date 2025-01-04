subscription_id     = <subscription_id>
name                          = "saltrdbbackups"
location                      = "uaenorth"
resource_group_name           = "RG-LTR-PROD-Finance"
account_tier                  = "Standard"
cross_tenant_replication_enabled = false
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = false
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
subnet_ids = [
"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",                
    ]
tags                          = {"application": "backup",
        "creator": "Moin Syed",
        "Application Name": "Application Backup",
        "Application Owner": "Abhinav Sharma",
        "ENV": "PROD"
        } 
