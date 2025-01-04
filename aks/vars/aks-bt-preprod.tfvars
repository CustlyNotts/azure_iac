subscription_id     = <subscription_id>
resource_group                 = "rg-bt-preprod"
virtual_network                = "vnet-btnwhub"
virtual_network_resource_group = "rg-btnwhub"
subnet                         = "snet-bt-preprod"
cluster_name                   = "aks-bt-preprod"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 15
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  btpreprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 20
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart / pradeesh raju",
  "ENV" : "UAT"
}
########## k8s_workloads ######################
kubecost_ip = "10.223.80.151"