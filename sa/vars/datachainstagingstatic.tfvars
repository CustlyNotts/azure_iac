subscription_id     = <subscription_id>
name                              = "datachainstagingstatic"
resource_group_name               = "DPWHyderabad"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = false
public_network_access_enabled     = true
cross_tenant_replication_enabled  = true
all_network_access_enabled        = true
infrastructure_encryption_enabled = false
custom_domain_name                = "staging.datachain.cargoes.com"
custom_domain_enabled             = true
bypass                            = ["AzureServices"]
tags = {
  "Application Name" : "Cargoes Platform",
  "Application Owner" : "Multiple teams (Ravi/Jaya/Mostafa/Jabeer)",
  "ENV" : "STAGING",
  "PrivitizationExemption" : "True"
}