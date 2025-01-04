subscription_id     = <subscription_id>
name                     = "rgcargoescleganedev8bb3"
resource_group_name      = "rg-cargoesclegane-dev"
account_tier             = "Standard"
account_kind             = "Storage"
account_replication_type = "LRS"
soft_delete_enabled      = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
#cross_tenant_replication_enabled  = 
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
   "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev/subnets/snet-cleganefunctionapp-dev",
   "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev/subnets/snet-cleganefunctionapp-staging"
]
all_network_access_enabled = false
#network_rules    = "allow"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Clegane",
  "Application Owner" : "Mostafa",
  "ENV" : "DEV",
}