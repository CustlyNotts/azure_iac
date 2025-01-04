subscription_id     = <subscription_id>
resource_group                 = "rg-bt-preprod-green"
virtual_network                = "vnet-btnwhub"
virtual_network_resource_group = "rg-btnwhub"
subnet                         = "snet-bt-preprod-green"
cluster_name                   = "aks-bt-preprod-green"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  btpregreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 20
    aks_user_pool_max_pods     = 30
  }
}
tags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart / pradeesh raju",
  "ENV" : "UAT",
  "RITM" : "000000"
}
########## k8s_workloads ######################
kubecost_ip = "10.223.97.126"