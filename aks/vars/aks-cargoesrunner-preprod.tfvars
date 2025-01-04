subscription_id     = <subscription_id>
resource_group                      = "rg_cargoesRunner_dev"
virtual_network                     = "vnet-cargoesRunnernonprod"
virtual_network_resource_group      = "rg_cargoesRunner_Vnet_nonprod"
subnet                              = "Snet-AKSnonprod2"
cluster_name                        = "aks-cargoesrunner-preprod"
kubernetes_version                  = "1.25.6"
key_vault_secrets_provider          = true
aks_system_pool_name                = "system"
aks_system_pool_vm_size             = "Standard_B4ms"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_max_pods            = 45
aks_additional_node_pools = {
  appnodpol = {
    aks_user_pool_vm_size      = "Standard_E8as_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 6
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Jabeer Yusuf",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = ""