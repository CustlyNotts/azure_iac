subscription_id     = <subscription_id>
name                     = "stcnsproddrlogs"
resource_group_name      = "rg-cns-dr"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
soft_delete_enabled      = false
#change_feed_enabled            = true
#versioning_enabled             = true
large_file_share_enabled          = true
delete_retention_days             = 346
container_delete_retention_days   = null
restore_policy_days               = 341
cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
]

all_network_access_enabled = false

allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel",
  "ENV" : "DR"
}