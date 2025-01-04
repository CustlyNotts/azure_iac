subscription_id     = <subscription_id>
resource_group                 = "rg-cargoes-finance-prod"
virtual_network                = "vnet-cargoes-finance-prod"
virtual_network_resource_group = "rg-cargoes-finance-prod"
subnet                         = "snet-cargoes-finance-s1-prod"
cluster_name                   = "aks-cargoes-finance-cluster-prod"
cluster_dns_prefix             = "cargoes-finance-platform-prod"
kubernetes_version             = "1.26.0"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "standard_d4s_v3"
aks_system_pool_zones          = []
aks_system_pool_min_count      = 2
aks_system_pool_max_count      = 4
aks_system_pool_max_pods       = 60
tags = {
  "Application Name" : "Cargoes Finance",
  "Application Owner" : "Abhinav Sharma",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.240.40.6"
