subscription_id     = <subscription_id>
resource_group                 = "rg-global-dr"
virtual_network                = "vnet-global-dr"
virtual_network_resource_group = "rg-global-infra-dr"
subnet                         = "snet-global-dr1"
aks_network_policy             = "overlay"
cluster_name                   = "aks-global-prod-dr"
kubernetes_version             = "1.27.9"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 3
aks_additional_node_pools = {
  globalproddr = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "CCS"
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV" : "PROD"
}
########## k8s_workloads ######################
#kubecost_ip = "10.2.32.63"
