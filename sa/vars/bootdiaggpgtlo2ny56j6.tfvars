subscription_id     = <subscription_id>
name                     = "bootdiaggpgtlo2ny56j6"
resource_group_name      = "rg-checkpointdrappfw"
account_tier             = "Standard"
account_kind             = "Storage"
account_replication_type = "LRS"
#soft_delete_enabled             = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
min_tls_version                   = "TLS1_0"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = true
subnet_ids = [
]
all_network_access_enabled = true
network_rules              = "Allow"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "provider" : "30DE18BC-F9F6-4F22-9D30-54B8E74CFD5F",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}