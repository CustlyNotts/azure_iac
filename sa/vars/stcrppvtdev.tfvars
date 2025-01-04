subscription_id     = <subscription_id>
name                     = "stcrppvtdev"
resource_group_name      = "rg-crrdev-001"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
#soft_delete_enabled             = true
large_file_share_enabled = true
#delete_retention_policy          = 7
#container_delete_retention_policy = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
]

all_network_access_enabled = false
network_rules              = "Deny"

allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Rohit kumar",
  "ENV" : "DEV"
}