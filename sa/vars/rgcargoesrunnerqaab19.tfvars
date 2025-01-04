subscription_id     = <subscription_id>
name                            = "rgcargoesrunnerqaab19"
resource_group_name             = "rg_cargoesRunner_qa"
account_tier                    = "Standard"
account_kind                    = "Storage"
account_replication_type        = "LRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = true
subnet_ids = [
]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Application Owner",
  "ENV" : "QA",
}