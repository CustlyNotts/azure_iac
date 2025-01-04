subscription_id     = <subscription_id>
resource_group                      = "rg-ros-dr"
virtual_network                     = "vnet-ros-prod"
virtual_network_resource_group      = "rg-ros-dr"
subnet                              = "snet-aks-dr"
cluster_name                        = "aks-ros-prod-dr"
cluster_dns_prefix                  = "aks-ros-prod-dr"
kubernetes_version                  = "1.29.5"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_vm_size             = "Standard_E8ds_v4"
aks_system_pool_enable_auto_scaling = true
aks_user_pool_min_count             = 1
aks_user_pool_max_count             = 10
aks_system_pool_zones               = []
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_E8ds_v4"
    aks_user_pool_min_count = 1
    aks_user_pool_max_count = 10
    aks_user_pool_zones     = []
  }
  winpol = {
    aks_user_pool_vm_size             = "Standard_D4s_v3"
    aks_user_pool_enable_auto_scaling = false
    aks_user_pool_node_taints         = ["agentpool=window:NoSchedule"]
    aks_user_pool_os_type             = "Windows"
    aks_user_pool_zones               = []
  }
}
tags = {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "DR"
  "RITM" : "RITM0032091"
}
########## k8s_workloads ######################
kubecost_ip = "10.171.0.242"
