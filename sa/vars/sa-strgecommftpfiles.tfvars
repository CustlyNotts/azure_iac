subscription_id     = <subscription_id>
name                     = "strgecommftpfiles"
resource_group_name      = "rg-ecommercedragonmart-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = true
#large_file_share_enabled  = false
delete_retention_days             = 35
container_delete_retention_days   = null
restore_policy_days               = 30
change_feed_enabled               = true
versioning_enabled                = true
#cross_tenant_replication_enabled  = true
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = true
subnet_ids = [
    "subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/Rg-vnetdr/providers/Microsoft.Network/virtualNetworks/vnetdpwglb-dr/subnets/Critical_Prod_dr",
    "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Critical_Prod"

]


all_network_access_enabled = true
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
        "Application Name": "DragonMart",
        "Application Owner": "Vishank/Sandeep",
        "ENV": "PROD",
        "Creator": "98e5f3973ad74a6eb7b4ae70c27461ed"

}
