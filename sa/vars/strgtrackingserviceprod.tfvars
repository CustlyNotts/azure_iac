subscription_id     = <subscription_id>
name                              = "strgtrackingserviceprod"
resource_group_name               = "rg-trackingservice-prod"
account_tier                      = "Standard"
account_kind                      = "Storage"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
all_network_access_enabled        = false
public_network_access_enabled     = false
infrastructure_encryption_enabled = false

bypass                            = ["AzureServices"]
tags = { 
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay LI/Bittu Lal",    
  "ENV" : "PROD"
    "PrivatizationException": "True"
}