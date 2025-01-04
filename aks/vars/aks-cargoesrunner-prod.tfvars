subscription_id     = <subscription_id>
resource_group                    = "rg_cargoesRunner_prod"
virtual_network                   = "vnet-cargoesRunnerprod"
virtual_network_resource_group    = "rg_cargoesRunner_Vnet_prod"
subnet                            = "snet-AKS"
cluster_name                      = "aks-cargoesrunner-prod"
kubernetes_version                = "1.26.3"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_zones             = []
aks_network_policy                = "none"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 6
aks_system_pool_min_count         = 1
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_min_count = 6
    aks_user_pool_max_count = 25
    aks_user_pool_zones     = []
  }
}
tags = {
  "Application Name" : "Cargoes Runner"
  "Application Owner" : "Jabeer Yusuf"
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.159.9.218"
