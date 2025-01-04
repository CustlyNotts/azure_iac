subscription_id     = <subscription_id>
name                     = "stcnsprodnsgflowlogs"
resource_group_name      = "rg-cnsprod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = false
#change_feed_enabled            = true
#versioning_enabled             = true
#large_file_share_enabled        = true
delete_retention_days             = 346
container_delete_retention_days   = null
restore_policy_days               = 341
cross_tenant_replication_enabled  = true
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = false
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod-ilb"
]

all_network_access_enabled = false

allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}