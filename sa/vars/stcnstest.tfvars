subscription_id     = <subscription_id>
name                     = "stcnstest"
resource_group_name      = "rg-cnstest"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
#soft_delete_enabled             = true
#large_file_share_enabled  = true
#delete_retention_policy          = 7
#container_delete_retention_policy = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_0"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/Test",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cns-ep"

]


all_network_access_enabled = false
#network_rules    = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

static_website = {
  index_document = "502.html"
}

tags = {

  "Application Name"  = "Mawani CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "TESTING"

}
