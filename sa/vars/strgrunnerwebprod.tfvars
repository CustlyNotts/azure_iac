subscription_id     = <subscription_id>
name                            = "strgrunnerwebprod"
resource_group_name             = "rg_cargoesRunner_prod"
account_tier                    = "Standard"
account_kind                    = "StorageV2"
account_replication_type        = "RAGRS"
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
  "ENV" : "PROD",
  "Exemption Reason" : "Storage Accoiunt used by logic app",
  "Privitization Exemption" : "True",
  "RITM" : "RITM0075554"
}