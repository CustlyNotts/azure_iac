subscription_id     = <subscription_id>
resource_group                 = "rg-cargoestms-prod"
virtual_network                = "vnet-cargoestms-prod"
virtual_network_resource_group = "rg-cargoestms-prod-infra"
subnet                         = "snet-cargoestms-prod-aks"
cluster_name                   = "aks-cargoestms-prod"
cluster_dns_prefix             = "aks-cargoestms-prod-dns"
kubernetes_version             = "1.29.4"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E4as_v4"
aks_system_pool_max_count      = 2
aks_system_pool_max_pods       = 50
tags = {
  "Application Name"  = "Transportation Management System",
  "Application Owner" = "Shiv Suthar/Ritesh Singh",
  "Creator"           = "Saikrishnan Sreekumar"
  "ENV"               = "Prod"
}
########## k8s_workloads ######################
#kubecost_ip = "10.148.8.20"