subscription_id     = <subscription_id>
name                            = "stbtuatdrfile"
resource_group_name             = "rg-btuat-dr"
account_tier                    = "Standard"
account_kind                    = "StorageV2"
account_replication_type        = "RAGRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = true
tags = {
  "Application Name" : "CCS-Bharat Trade",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UATDR"
}