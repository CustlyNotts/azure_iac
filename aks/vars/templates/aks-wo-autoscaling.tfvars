subscription_id     = <subscription_id>
resource_group                      = "rg-appliedscience-aks-dev"
virtual_network                     = "vnet-appliedscience"
virtual_network_resource_group      = "rg-network"
subnet                              = "snet-aks-appliedscience-dev"
cluster_name                        = "aks-appliedscience-dev"
kubernetes_version                  = "1.25.5"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_node_count          = 2
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size             = "Standard_D8s_v3"
    aks_user_pool_os_disk_type        = "Ephemeral"
    aks_user_pool_enable_auto_scaling = false
    aks_user_pool_node_count          = 2
  }
}
tags = {
  "Application Name" : "xxx"
  "Application Owner" : "xxx"
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = ""