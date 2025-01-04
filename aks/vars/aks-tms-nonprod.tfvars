subscription_id     = <subscription_id>
resource_group                 = "rg-tms-nonprod"
virtual_network                = "vnet-tms-nonprod"
virtual_network_resource_group = "rg-tms-nonprod-infra"
subnet                         = "snet-tms-nonprod-aks"
cluster_name                   = "aks-tms-nonprod"
cluster_dns_prefix             = "aks-tms-nonprod-dns"
kubernetes_version             = "1.26.3"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E4as_v4"
aks_system_pool_max_count      = 3
aks_system_pool_max_pods       = 50
tags = {
  "Application Name"  = "Transportation Management System",
  "Application Owner" = "Shiv Suthar",
  "Creator"           = "Saikrishnan Sreekumar"
  "ENV"               = "NonProd"
}
########## k8s_workloads ######################
#kubecost_ip = "10.148.8.20"