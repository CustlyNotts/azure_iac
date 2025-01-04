subscription_id     = <subscription_id>
resource_group                 = "rg-cnsuat"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "UAT1"
cluster_name                   = "aks-cns-uat"
kubernetes_version             = "1.26.6"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_pods       = 110
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cnsuatpool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 2
  }

  cnsuat = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 2
    aks_user_pool_max_pods     = 50
  }
  cargoespool1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "UAT",
  "RITM" : "REQ0051922"
}
########## k8s_workloads ######################
kubecost_ip = "172.22.34.38"