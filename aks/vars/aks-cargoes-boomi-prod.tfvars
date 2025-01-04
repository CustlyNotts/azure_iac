subscription_id     = <subscription_id>
resource_group                 = "rg-cargoes-boomi-prod"
virtual_network                = "vnet-cargoes-boomi-prod"
virtual_network_resource_group = "rg-cargoes-boomi-prod"
subnet                         = "snet-cargoes-boomi-prod"
cluster_name                   = "aks-cargoes-boomi-prod"
kubernetes_version             = "1.24.9"
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_max_count      = 5
aks_system_pool_max_pods       = 40
aks_system_pool_zones          = []
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_D2s_v3"
    aks_user_pool_min_count = 2
    aks_user_pool_max_count = 15
    aks_user_pool_max_pods  = 40
    aks_user_pool_zones     = []
  }
}
tags = {
  "Application Name"  = "Boomi",
  "Application Owner" = "Veeresh Sodankar",
  "ENV"               = "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.139.16.123"