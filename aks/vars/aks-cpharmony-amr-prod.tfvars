subscription_id     = <subscription_id>
resource_group                    = "rg-cpharmony-amr-prod"
virtual_network                   = "vnet-cpharmony-amr-prod"
virtual_network_resource_group    = "rg-cpharmony-amr-prod"
subnet                            = "snet-akscpharmonynode-prod"
cluster_name                      = "aks-cpharmony-amr-prod"
cluster_dns_prefix                = "aks-cpharmony-amr-prod-dns"
kubernetes_version                = "1.24.10"
aks_system_pool_name              = "dpwhchov1"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
aad_azure_rbac                    = true
aad_kubernetes_rbac               = true
local_account_disabled            = true
aks_system_pool_zones             = []
cluster_automatic_channel_upgrade = "patch"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 4
aks_system_pool_max_pods          = 50
aks_additional_node_pools = {
  dpwhchov2 = {
    aks_user_pool_vm_size = "Standard_D4s_v3"
    aks_user_pool_zones   = []
  }
}
tags = {
  "Application Name" : "HARMONY"
  "ENV" : "PROD"
}
########## k8s_workloads ######################
aks_workloads_enabled = false
