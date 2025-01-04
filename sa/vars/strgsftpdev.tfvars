subscription_id     = <subscription_id>
name                     = "strgsftpdev"
resource_group_name      = "Rg-sftp-dev"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = true
#large_file_share_enabled  = true
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
enable_https_traffic_only         = false
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = true
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/Snet-sftp"
]


all_network_access_enabled = false


allowed_ips = []
bypass      = ["AzureServices"]


tags = {

  "Application Name"  = "Mawani Sftp"
  "Application Owner" = "abdulla.kazim"
  "ENV"               = "DEV"

}
