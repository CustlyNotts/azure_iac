subscription_id     = <subscription_id>
name                              = "datachainprodstatic"
resource_group_name               = "datachain-prod"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = false
infrastructure_encryption_enabled = false
custom_domain_enabled             = true
versioning_enabled                = false
bypass                            = ["AzureServices"]
public_network_access_enabled     = true
custom_domain_name                = "app.datachain.cargoes.com"
subnet_ids = [
  "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod/subnets/snetakspod",
  "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod/subnets/snetnonaks"
]
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li/Jayakrishna Alwar",
  "ENV" : "PROD",
  "PrivitizationExemption" : "True"
}