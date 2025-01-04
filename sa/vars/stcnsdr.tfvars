subscription_id     = <subscription_id>
name                              = "stcnsdr"
resource_group_name               = "rg-cnsdr"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = false
delete_retention_days             = 7
container_delete_retention_days   = 7
min_tls_version                   = "TLS1_0"
allow_nested_items_to_be_public   = false
public_network_access_enabled     = false
infrastructure_encryption_enabled = false
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DR"
}
