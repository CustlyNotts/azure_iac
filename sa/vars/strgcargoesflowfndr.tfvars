subscription_id     = <subscription_id>
name                              = "strgcargoesflowfndr"
resource_group_name               = "rg-cargoesflow-prod-dr"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
delete_retention_days             = 7
all_network_access_enabled        = false
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
storage_account_cross_tenant_replication_enabled = true
virtual_network_subnet_id = ["/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dr-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dr/subnets/snet-cargoesflowfunction-prod-dr"]
allowed_ips =  [
              
            ]
bypass                            = ["AzureServices"]
tags = { 
  "Application Name" : "Cargoes Flow",
  "Application Owner" : "Mostafa",    
  "ENV" : "PROD"
}