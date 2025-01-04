subscription_id     = <subscription_id>
resource_group                 = "rg-cnsprod"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "snet-cnsprod"
cluster_name                   = "aks-cns-prod"
kubernetes_version             = "1.25.5"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_pods       = 110
aks_additional_node_pools = {
  cargoesprod = {
    aks_user_pool_vm_size      = "standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 8
    aks_user_pool_max_count    = 15
  }
  cnsprodpool = {
    aks_user_pool_vm_size      = "standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 15
    aks_user_pool_max_count    = 40
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD",
  "RITM" : "INC0017234"
}

########## k8s_workloads ######################
kubecost_ip = "172.22.99.238"