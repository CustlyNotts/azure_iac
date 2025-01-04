subscription_id     = <subscription_id>
name                     = "stlcitprodfile"
resource_group_name      = "rg-lcit-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGZRS"
soft_delete_enabled      = true
#large_file_share_enabled  = false
delete_retention_days             = 7
container_delete_retention_days   = 7
#restore_policy_days               = 341
change_feed_enabled               = false
versioning_enabled                = false
cross_tenant_replication_enabled  = true
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
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