subscription_id     = <subscription_id>
resource_group                 = "Rg-Hoapps-Prod"
virtual_network                = "Vnet-Hoapps-Prod"
virtual_network_resource_group = "Rg-Hoapps-Prod"
subnet                         = "Snet-hoapps-aks-prod"
cluster_name                   = "aks-hoapps-prod"
cluster_dns_prefix             = "aks-hoapps-prod-dns"
kubernetes_version             = "1.24.9"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E2s_v3"
aks_system_pool_max_count      = 3
aks_system_pool_max_pods       = 110
aks_additional_node_pools = {
  hoappool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_max_count = 5
    aks_user_pool_zones     = []
  }
}
tags = {
  "Application Name"  = "HO Application",
  "Application Owner" = "Shabih Ahmed",
  "Creator"           = "Mohamed Nowphal"
  "ENV"               = "PROD"
  "RITM"              = "0000000000"
}
########## k8s_workloads ######################
kubecost_ip = "10.239.0.204"
