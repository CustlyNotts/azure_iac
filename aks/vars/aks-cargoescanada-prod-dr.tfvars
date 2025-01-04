subscription_id     = <subscription_id>
resource_group                 = "RG-cargoescanadaprod-DR"
virtual_network                = "VNET-cargoescanadaprod-DR"
virtual_network_resource_group = "RG-cargoescanadaprod-DR"
subnet                         = "snet-cargoesprod-dr"
cluster_name                   = "aks-cargoescanada-prod-dr"
kubernetes_version             = "1.27.9"
aks_network_policy             = "overlay"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  canadagreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 6
    aks_user_pool_max_count    = 30
    aks_user_pool_max_pods     = 10
  }
}

tags = {
  "Application Name" : "Cargoes Canada",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR"
}
########## k8s_workloads ######################
#kubecost_ip = "10.210.128.212"