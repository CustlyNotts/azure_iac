subscription_id     = <subscription_id>
resource_group                 = "rg-btprod-dr"
virtual_network                = "vnet-bt-dr"
virtual_network_resource_group = "rg-btinfra-dr"
subnet                         = "snet-bt-dr"
cluster_name                   = "aks-btprod-dr"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 15
aks_additional_node_pools = {
  btproddr = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
tags = {
  "Application Name" : "CCS-Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR",
  "RITM" : "RITM0092774"
}
########## k8s_workloads ######################
#kubecost_ip = "172.17.0.63"