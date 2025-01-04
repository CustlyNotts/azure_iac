subscription_id     = <subscription_id>
name                          = "strgtradefinanceprodblob"
location                      = "uaenorth"
resource_group_name           = "rg-cargoes-finance-prod"
account_tier                  = "Standard"
cross_tenant_replication_enabled = true
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "GRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
tags                          = {  "Application Name": "Cargoes Finance",
        "Application Owner": "Abhinav Sharma",
        "ENV": "PROD",
        "Exemption Reason": "Using for production logos",
        "Privitization Exemption": "True"
        } 
