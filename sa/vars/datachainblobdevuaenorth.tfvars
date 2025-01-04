subscription_id     = <subscription_id>
name                              = "datachainblobdevuaenorth"
resource_group_name               = "datachain-development-uaenorth"
account_tier                      = "Standard"
account_kind                      = "BlobStorage"
account_replication_type          = "LRS"
soft_delete_enabled               = false
public_network_access_enabled     = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
bypass                            = ["AzureServices"]
custom_domain_enabled             = false
nfsv3_enabled                     = false
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "DEV",
  "Exemption Reason" : "Public Access required for Development activities",
  "PrivitizationExemption" : "True"
}