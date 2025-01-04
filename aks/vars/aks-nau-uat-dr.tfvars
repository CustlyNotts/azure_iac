subscription_id     = <subscription_id>
resource_group                 = "rg-nau-uat-dr"
virtual_network                = "vnet-nau-uat-dr"
virtual_network_resource_group = "rg-nau-uat-dr"
subnet                         = "snet-aks-nau-uat-dr"
cluster_name                   = "aks-nau-uat-dr"
kubernetes_version             = "1.28.3"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_b4ms"
aks_system_pool_max_count      = 5
aks_system_pool_max_pods       = 110
aks_system_pool_zones          = []
tags = {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = ""