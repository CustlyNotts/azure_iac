subscription_id     = <subscription_id>
name                     = "stlcitprodlogs"
resource_group_name      = "rg-lcit-prod"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
soft_delete_enabled      = false
#large_file_share_enabled  = false
delete_retention_days             = 346
container_delete_retention_days   = null
restore_policy_days               = null
change_feed_enabled               = null
versioning_enabled                = null
cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
    "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-lcit-prod/subnets/snet-aksnode-lcit-prod",
    "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-lcit-prod/subnets/snet-akspod-lcit-prod",
    "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-lcit-prod/subnets/snet-common",
    "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/rg-lcit-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-lcit-prod/subnets/snet-internallb"
]


all_network_access_enabled = false
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
        "Application Name": "lcit",
        "Application Owner": "Daniel Stuart/Linu Joseph/Pradeesh Raju",
        "ENV": "PROD"
}