
subscription_id     = <subscription_id>
name                          = "stccnonprd"
resource_group_name           = "rg-cargoes-app"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true

min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
allowed_ips = []
bypass      = ["AzureServices"]


subnet_ids = [
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-customs/subnets/snet-aks-cargoes-customs-stg",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-customs/subnets/snet-bastion-cargoes-customs",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-customs/subnets/snet-lb-cargoes-customs-stg",
     "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
            ]
tags                          = {"Application Name": "Cargoes app", "Application Owner": "hussain.hashimi@dpworld.com", "ENV": "DEV"} 
