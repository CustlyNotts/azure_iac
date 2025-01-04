subscription_id     = <subscription_id>
resource_group                    = "rg_cargoesRunner_proddr"
virtual_network                   = "vnet-cargoesRunnerproddr"
virtual_network_resource_group    = "rg_cargoesRunner_proddr"
subnet                            = "snet-AKSdr"
cluster_name                      = "aks-cargoesrunner-proddr"
kubernetes_version                = "1.26.3"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_zones             = []
aks_network_policy                = "none"
aks_system_pool_vm_size           = "Standard_E8ds_v5"
aks_system_pool_os_disk_type      = "Ephemeral"
aks_system_pool_max_pods          = 50
aks_additional_node_pools = {
  userpool = {
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
kubecost_ip = "10.7.112.6"