subscription_id     = <subscription_id>
resource_group                      = "rg-ros-prod"
virtual_network                     = "vnet-ros-prod"
virtual_network_resource_group      = "rg-ros-prod"
subnet                              = "snet-aks-prod-green"
cluster_name                        = "aks-ros-prod-green"
cluster_dns_prefix                  = "aks-ros-prod-green"
kubernetes_version                  = "1.26.6"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_vm_size             = "Standard_B4ms"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_node_count          = 2
aks_system_pool_zones               = []
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_E8ds_v4"
    aks_user_pool_min_count = 2
    aks_user_pool_max_count = 5
    aks_user_pool_zones     = []
  }
  winpol = {
    aks_user_pool_vm_size     = "Standard_D4s_v3"
    aks_user_pool_node_taints = ["agentpool=window:NoSchedule"]
    aks_user_pool_os_type     = "Windows"
    aks_user_pool_max_count   = 1
    aks_user_pool_max_count   = 3
    aks_user_pool_zones       = []
  }
}
tags = {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = ""

