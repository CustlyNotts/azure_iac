subscription_id     = <subscription_id>
name                     = "cnsnwdiag"
resource_group_name      = "cnsnw"
account_tier             = "Standard"
account_kind             = "Storage"
account_replication_type = "LRS"
#soft_delete_enabled             = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
min_tls_version                   = "TLS1_0"
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = false
cross_tenant_replication_enabled  = false
subnet_ids = [
]

all_network_access_enabled = false



allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}