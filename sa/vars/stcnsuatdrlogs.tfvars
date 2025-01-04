subscription_id     = <subscription_id>
name                     = "stcnsuatdrlogs"
resource_group_name      = "rg-cnsuat-dr"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
#soft_delete_enabled             = true
large_file_share_enabled  = true
#delete_retention_policy          = 7
#container_delete_retention_policy = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
https_traffic_only_enabled         = false
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",

]


all_network_access_enabled = true
network_rules              = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {

  "Application Name"  = "CCS_CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "UAT"

}
