subscription_id     = <subscription_id>
name                              = "strgecommomsprod"
resource_group_name               = "rg-ecommerce-prod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
public_network_access_enabled     = false
bypass                            = ["AzureServices"]
tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
   "PublicAccessAllowed": "Flase"
   "PublicAccessInfo": "Nil"
}