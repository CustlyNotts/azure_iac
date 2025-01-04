subscription_id     = <subscription_id>
name                            = "strgcargoesrunnerimgprod"
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
  "Application Owner" : "Jabeer Yusuf",
  "ENV" : "PROD",
  "RITM" : "RITM0075554",
  "Privitization Exemption" : "True",
  "Exemption Reason" : "Storage Account Used By Akamai For Static Images"

}