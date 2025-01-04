subscription_id     = <subscription_id>
resource_group                 = "rg-cnsprod-green"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "snet-cnsprod-green"
cluster_name                   = "aks-cnsprod-green"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  cargosgreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 3
    aks_user_pool_max_count    = 15
  }
  cnsprodgreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 5
    aks_user_pool_max_count    = 40
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae",
  "ENV" : "PROD"
}

########## k8s_workloads ######################
kubecost_ip = "172.22.162.73"