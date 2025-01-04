subscription_id     = <subscription_id>
name                     = "stgtagresource01"
resource_group_name      = "rg-cnsprihubnw"
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
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = true
subnet_ids = [

]


all_network_access_enabled = false


allowed_ips = []
bypass      = ["AzureServices"]


tags = {

  "Application Name"  = "Mawani CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "PROD"

}
