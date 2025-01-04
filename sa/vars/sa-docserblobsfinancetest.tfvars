subscription_id     = <subscription_id>
name                          = "docserblobsfinancetest"
location                      = "uaenorth"
resource_group_name           = "cargoes-finance-staging"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = false
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = false
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = true
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
subnet_ids = [
    "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/virtualNetworks/cargoes-finance-staging-vnet/subnets/cargoes-finance-platform-cluster-staging-subnet-1",
    "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/virtualNetworks/cargoes-finance-staging-vnet/subnets/cargoes-finance-platform-cluster-staging-subnet-2",
]
tags                          = {"Application Name": "Cargoes Finance",
        "Application Owner": "Abhinav Sharma",
        "ENV": "DEV"
        } 
