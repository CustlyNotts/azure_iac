subscription_id     = <subscription_id>
name                          = "strgrostimaeurprod01"
resource_group_name           = "Rg-Rostima-Prod"
location                      = "uksouth"
account_tier                  = "Standard"
cross_tenant_replication_enabled = true
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "RAGRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = false
enable_https_traffic_only         = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
subnet_ids = [
 "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/redisprod-snet",
"/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/snet-rostimafunctions",
"/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/snet1-poemseurprod",
]
tags                          = { "Application Name": "Rostima",
        "Application Owner": "Hasaan Malik",
        "ENV": "PROD"
        } 
