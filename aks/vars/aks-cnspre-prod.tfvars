subscription_id     = <subscription_id>
resource_group                 = "rg-cnspreprod"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "snet-cnspre-prod"
cluster_name                   = "aks-cnspre-prod"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D8s_v3"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cgspreprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 3
    aks_user_pool_max_pods     = 10
    aks_user_pool_zones        = ["1", "2", "3"]
  }
  cnspreprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 20
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DEV",
  "RITM" : "INC0118660"
}

########## k8s_workloads ######################
kubecost_ip = "172.22.144.28"