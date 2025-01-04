subscription_id     = <subscription_id>
name                     = "saltrdbbackupscns"
resource_group_name      = "RG-LTR-PROD"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = false
large_file_share_enabled = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
]


all_network_access_enabled = false
network_rules              = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "created-by" : "moin.azadmin",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
