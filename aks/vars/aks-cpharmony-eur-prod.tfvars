subscription_id     = <subscription_id>
resource_group                    = "rg-cpharmony-eur-prod"
virtual_network                   = "vnet-cpharmony-eur-prod"
virtual_network_resource_group    = "rg-cpharmony-eur-prod"
subnet                            = "snet-akscpharmonynode-prod"
cluster_name                      = "aks-cpharmony-eur-prod"
cluster_dns_prefix                = "aks-cpharmony-eur-prod-dns"
kubernetes_version                = "1.24.10"
aks_system_pool_name              = "dpwhchov1"
aks_network_policy                = "none"
aks_system_pool_zones             = []
aad_azure_rbac                    = true
aad_kubernetes_rbac               = true
cluster_automatic_channel_upgrade = "patch"
local_account_disabled            = true
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 4
aks_system_pool_max_pods          = 30
aks_additional_node_pools = {
  dpwhchov2 = {
    aks_user_pool_vm_size  = "Standard_D4s_v3"
    aks_user_pool_max_pods = 10
    aks_user_pool_zones    = []
  }
}
tags = {
  "Application Name" = "HARMONY",
  "ENV"              = "PROD"
}
########## k8s_workloads ######################
aks_workloads_enabled = false
