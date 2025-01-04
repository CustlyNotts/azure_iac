subscription_id     = <subscription_id>
resource_group                 = "cargoes-prod-dr"
virtual_network                = "vnet-cargoessharedapps-prod-dr"
virtual_network_resource_group = "cargoes-prod-dr"
subnet                         = "snetakspod-dr"
cluster_name                   = "aks-sharedapps-prod"
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
  "ENV" : "DR"
}
