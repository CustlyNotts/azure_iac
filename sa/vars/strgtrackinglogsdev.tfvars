subscription_id     = <subscription_id>
name                              = "strgtrackingservicefndev"
resource_group_name               = "rg-trackingservice-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RA-GRS"
soft_delete_enabled               = true
delete_retention_days             = 7
all_network_access_enabled        = false
public_network_access_enabled     = false
infrastructure_encryption_enabled = false

bypass                            = ["AzureServices"]
tags = { 
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay LI/Bittu",    
  "ENV" : "DEV"
    "PrivatizationException": "True"
}