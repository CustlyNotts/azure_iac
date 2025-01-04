subscription_id     = <subscription_id>
resource_group                 = "rg-cargoesshared-prod"
virtual_network                = "vnet-cargoessharedapps-prod"
virtual_network_resource_group = "rg-cargoesprod-SharedInfra-prod"
subnet                         = "snetakspod"
cluster_name                   = "aks-sharedapps-prod"
kubernetes_version             = "1.24.9"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_name           = "system"
aks_system_pool_vm_size        = "Standard_DS2_v2"
aks_system_pool_max_pods       = 35
aks_additional_node_pools = {
  usernodepool = {
    aks_user_pool_vm_size   = "Standard_DS2_v2"
    aks_user_pool_max_count = 15
  }
}
tags = {
  "Application Name" : "Cargoes Shared",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.240.193.76"