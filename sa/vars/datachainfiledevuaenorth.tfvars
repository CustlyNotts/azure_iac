subscription_id     = <subscription_id>
name                              = "datachainfiledevuaenorth"
resource_group_name               = "datachain-development-uaenorth"
account_tier                      = "Premium"
account_kind                      = "FileStorage"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = false
custom_domain_enabled             = false
bypass                            = ["AzureServices"]
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "DEV",
  "Exemption Reason" : "Public Access required for Development activities",
  "PrivitizationExemption" : "True"
}