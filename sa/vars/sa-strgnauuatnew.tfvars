subscription_id     = <subscription_id>
name                     = "strgnauuatnew"
resource_group_name      = "Rgnauuat"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = true
#large_file_share_enabled  = false
delete_retention_days             = 3
container_delete_retention_days   = null
#restore_policy_days               = 341
change_feed_enabled               = false
versioning_enabled                = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
    "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RgOfbizuat/providers/Microsoft.Network/virtualNetworks/Vnetofbizuat/subnets/UAT",
    "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauuat/providers/Microsoft.Network/virtualNetworks/Vnetnauuat/subnets/aks-nau-uat-cluster",
    "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauuat/providers/Microsoft.Network/virtualNetworks/Vnetnauuat/subnets/aks-nau-uat-cluster-lb",
    "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rg-nau-uat-dr/providers/Microsoft.Network/virtualNetworks/vnet-nau-uat-dr/subnets/snet-aks-nau-uat-dr"
]


all_network_access_enabled = true
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
        "Application Name": "NAU",
        "Application Owner": "Ibrahim Ali Al-Ali",
        "ENV": "UAT",
        "PublicAccessAllowed": "RITM0074674",
        "PublicAccessInfo": "App changes in progress"
}
