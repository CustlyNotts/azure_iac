subscription_id     = <subscription_id>
resource_group                 = "rg-global-prod-green"
virtual_network                = "vnet-global-prod"
virtual_network_resource_group = "rg-global-infra-prod"
subnet                         = "snet-aks-global-prod-green"
cluster_name                   = "aks-global-prod-green"
kubernetes_version             = "1.26.6"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 3
aks_additional_node_pools = {
  glprodgreen = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "CCS"
  "Application Owner" : "Daniel Stuart"
  "ENV" : "PROD"
}
########## k8s_workloads #####################
kubecost_ip = "10.2.63.200"
