subscription_id     = <subscription_id>
resource_group                    = "Rgnauuat"
virtual_network                   = "Vnetnauuat"
virtual_network_resource_group    = "Rgnauuat"
subnet                            = "aks-nau-uat-cluster"
cluster_name                      = "Aks-Nau-Uat"
kubernetes_version                = "1.28.3"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aad_kubernetes_rbac               = true
aad_azure_rbac                    = true
aks_system_pool_name              = "nauapppool"
aks_system_pool_vm_size           = "Standard_E8ds_v5"
aks_system_pool_max_pods          = 70
aks_system_pool_max_count         = 5
tags = {
  "Application Name"  = "NAU",
  "Application Owner" = "Ibrahim Ali Al-Ali",
  "ENV"               = "UAT"
}
########## k8s_workloads ######################
kubecost_ip = "10.236.12.44"
