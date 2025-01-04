subscription_id     = <subscription_id>
resource_group                 = "rg-bt-prod"
virtual_network                = "vnet-btnwhub"
virtual_network_resource_group = "rg-btnwhub"
subnet                         = "snet-bt-prod"
cluster_name                   = "aks-bt-prod"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 2
aks_system_pool_max_pods       = 40
aks_system_pool_zones          = []
aks_additional_node_pools = {
  btprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_min_count    = 5
    aks_user_pool_max_count    = 30
    aks_user_pool_zones        = []
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
tags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.223.50.28"
