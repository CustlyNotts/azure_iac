subscription_id     = <subscription_id>
name                     = "stcnspreprodlogs"
resource_group_name      = "rg-cnspreprod"
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
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnspreprod-ilb",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnspreprod",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnspre-prod",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-akspod-cns-dev",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-aksnode-cns-dev",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1"
]


all_network_access_enabled = false
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DEV"
}
