subscription_id     = <subscription_id>
resource_group                 = "Rg-nau-production"
virtual_network                = "vnet-nau-aks-production"
virtual_network_resource_group = "Rg-nau-production"
subnet                         = "snet-aks-production"
cluster_name                   = "aks-nau-production"
kubernetes_version             = "1.28.3"
aks_network_policy             = "none"
aks_system_pool_name           = "nauprod"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 3
aks_system_pool_max_count      = 8
aks_system_pool_max_pods       = 40
aks_system_pool_zones          = []
tags = {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}

########## k8s_workloads ######################
kubecost_ip = "10.236.32.6"