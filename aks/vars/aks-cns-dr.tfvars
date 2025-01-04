subscription_id     = <subscription_id>
resource_group                      = "rg-cnsdr"
virtual_network                     = "vnet-cnsdr"
virtual_network_resource_group      = "rg-cnsdr"
subnet                              = "snet-cnsdr"
cluster_name                        = "aks-cns-dr"
kubernetes_version                  = "1.25.5"
aks_system_pool_name                = "agentpool"
aks_system_pool_vm_size             = "Standard_D4s_v3"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_node_count          = 1
aks_system_pool_max_pods            = 110
aks_additional_node_pools = {
  cgsprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 20
  }
  cnsdrpool = {
    aks_user_pool_vm_size      = "Standard_d8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 40
  }
}
tags = {
  "Application Name"  = "Mawani CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "DR"
  "RITM"              = "RITM123456"
}

########## k8s_workloads ######################
kubecost_ip = "172.21.0.178"