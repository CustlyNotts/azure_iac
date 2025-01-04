subscription_id     = <subscription_id>
resource_group                 = "rg-cargoesshared-prod"
virtual_network                = "vnet-cargoessharedapps-prod"
virtual_network_resource_group = "rg-cargoesprod-SharedInfra-prod"
subnet                         = "snetaksgreen"
cluster_name                   = "aks-sharedapps-prod-green"
kubernetes_version             = "1.29.4"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_name           = "system"
aks_system_pool_vm_size        = "Standard_E4ds_v4"
aks_system_pool_max_pods       = 60
aks_additional_node_pools = {
  usernodepool = {
    aks_user_pool_vm_size   = "Standard_E4ds_v4"
    aks_user_pool_max_count = 15
  }
}
tags = {
  "Application Name" : "Cargoes Shared",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "PROD"
}
