subscription_id     = <subscription_id>
name                          = "stcargoesfinanceprodblob"
location                      = "uaecentral"
resource_group_name           = "rg-cargoes-finance-prod"
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
"/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-pro-dr/subnets/snet-cargoes-finance-s1-prod-dr",
"/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-pro-dr/subnets/snet-cargoes-finance-s2-prod-dr",
"/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-prod/subnets/snet-cargoes-finance-s1-prod",
"/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-prod/subnets/snet-cargoes-finance-s2-prod",
 ]
tags                          = { "Application Name": "Cargoes Finance",
        "Application Owner": "Abhinav Sharma",
        "ENV": "PROD"
        } 
