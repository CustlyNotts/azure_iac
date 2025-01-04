subscription_id     = <subscription_id>
name                            = "stb2bcrrdev002"
resource_group_name             = "rg-creg-dev"
account_tier                    = "Standard"
account_kind                    = "StorageV2"
account_replication_type        = "RAGRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = true
tags = {
  "Application Name" : "Creg",
  "Application Owner" : "Daniel Stuart/Rohit",
  "ENV" : "DEV"
}