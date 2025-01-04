subscription_id     = <subscription_id>
resource_group                 = "rg-tms-prod"
virtual_network                = "vnet-tms-prod"
virtual_network_resource_group = "rg-tms-prod-infra"
subnet                         = "snet-tms-prod-aks"
cluster_name                   = "aks-tms-prod"
cluster_dns_prefix             = "aks-tms-prod-dns"
kubernetes_version             = "1.28.3"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E8ds_v4"
aks_system_pool_max_count      = 3
aks_system_pool_max_pods       = 60
tags = {
  "Application Name"  = "Transportation Management System",
  "Application Owner" = "Shiv Suthar",
  "Creator"           = "Saikrishnan Sreekumar"
  "ENV"               = "Prod"
}
########## k8s_workloads ######################
#kubecost_ip = "10.148.8.20"