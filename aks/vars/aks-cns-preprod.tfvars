subscription_id     = <subscription_id>
resource_group                 = "rg-cnspreprod"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "snet-cnspreprod"
cluster_name                   = "aks-cns-preprod"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "aksagentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  cgspreprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  cnspreprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 20
    aks_user_pool_min_count    = 3
  }
}
tags = {
  "Application Name"  = "Mawani CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "172.22.133.161"