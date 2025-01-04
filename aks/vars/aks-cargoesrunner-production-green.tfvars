subscription_id     = <subscription_id>
resource_group                    = "rg_cargoesRunner_prod"
virtual_network                   = "vnet-cargoesRunnerprod"
virtual_network_resource_group    = "rg_cargoesRunner_Vnet_prod"
subnet                            = "snet-aks-green"
cluster_name                      = "aks-cargoesrunner-production-green"
kubernetes_version                = "1.25.5"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_zones             = []
aks_network_policy                = "none"
aks_system_pool_vm_size           = "Standard_E8ds_v5"
aks_system_pool_os_disk_type      = "Ephemeral"
aks_system_pool_max_pods          = 50
aks_additional_node_pools = {
  apppool = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_pods     = 50
    aks_user_pool_zones        = []
  }
}
tags = {
  "Application Name" : "Cargoes Runner"
  "Application Owner" : "Jabeer Yusuf"
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.159.16.54"