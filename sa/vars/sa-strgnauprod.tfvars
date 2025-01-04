subscription_id     = <subscription_id>
name                     = "strgnauprod"
resource_group_name      = "Rgnauprod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "GRS"
soft_delete_enabled      = true
#large_file_share_enabled  = false
delete_retention_days             = 346
container_delete_retention_days   = null
restore_policy_days               = 341
change_feed_enabled               = true
versioning_enabled                = true
#cross_tenant_replication_enabled  = true
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = true
subnet_ids = [

]


all_network_access_enabled = true
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
        "Application Name": "NAU",
        "Application Owner": "Ibrahim Ali Al-Ali",
        "ENV": "PROD"
}
