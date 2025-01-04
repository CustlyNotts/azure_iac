subscription_id     = <subscription_id>
resource_group                 = "rg-cargoestms-nonprod"
virtual_network                = "vnet-cargoestms-nonprod"
virtual_network_resource_group = "rg-cargoestms-nonprod-infra"
subnet                         = "snet-cargoestms-nonprod-aks"
cluster_name                   = "aks-cargoestms-nonprod"
cluster_dns_prefix             = "aks-cargoestms-nonprod-dns"
kubernetes_version             = "1.28.3"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E4as_v4"
aks_system_pool_max_count      = 2
aks_system_pool_max_pods       = 80
tags = {
  "Application Name"  = "Transportation Management System",
  "Application Owner" = "Shiv Suthar/Ritesh Singh",
  "Creator"           = "Saikrishnan Sreekumar"
  "ENV"               = "NonProd"
}
########## k8s_workloads ######################
#kubecost_ip = "10.148.8.20"