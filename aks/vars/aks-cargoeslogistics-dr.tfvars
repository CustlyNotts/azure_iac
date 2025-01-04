subscription_id     = <subscription_id>
resource_group                    = "rg-cargoeslogistics-prod-dr"
virtual_network                   = "vnet-cargoeslogistics-dr"
virtual_network_resource_group    = "rg-cargoeslogistics-infra-dr"
subnet                            = "snet-aks-dr"
cluster_name                      = "aks-cargoeslogistics-dr"
kubernetes_version                = "1.29.4"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aad_kubernetes_rbac               = false
aad_azure_rbac                    = false
aks_system_pool_name              = "cargoespool"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_pods          = 70
aks_system_pool_max_count         = 5
tags = {
  "Application Name"  = "Cargoes Logistics",
  "Application Owner" = "Utkarsh Kulshrestha",
  "ENV"               = "DR"
}
########## k8s_workloads ######################
