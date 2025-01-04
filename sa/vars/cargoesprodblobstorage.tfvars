subscription_id     = <subscription_id>
name                     = "cargoesprodblobstorage"
resource_group_name      = "rg-cargoeslogistics-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "GRS"
soft_delete_enabled      = true
delete_retention_days    = 346
#container_delete_retention_days = 7
min_tls_version                 = "TLS1_2"
allow_nested_items_to_be_public = false
public_network_access_enabled   = false
#cross_tenant_replication_enabled = false
infrastructure_encryption_enabled = false
restore_policy_days               = 341
versioning_enabled                = true
change_feed_enabled               = true
all_network_access_enabled        = false
network_rules                     = Allow
tags = {
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Ravi Pandey",
  "env" : "PROD"
}
