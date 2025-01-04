subscription_id     = <subscription_id>
resource_group                      = "rg-ros-prod"
virtual_network                     = "vnet-ros-prod"
virtual_network_resource_group      = "rg-ros-prod"
subnet                              = "snet-aks-prod"
cluster_name                        = "aks-ros-prod"
cluster_dns_prefix                  = "aks-ros-prod"
kubernetes_version                  = "1.29.5"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_vm_size             = "Standard_E8ds_v4"
aks_system_pool_enable_auto_scaling = true
aks_system_pool_node_count          = 2
aks_system_pool_max_pods            = 65
aks_system_pool_max_count           = 10
aks_system_pool_os_disk_type        = "Ephemeral"
aks_system_pool_zones               = []
aks_additional_node_pools = {
  userpol = {
    aks_user_pool_vm_size   = "Standard_E8ds_v4"
    aks_user_pool_min_count = 2
    aks_user_pool_max_count = 10
    aks_user_pool_min_count = 1
    aks_user_pool_max_pods  = 55
    aks_user_pool_zones     = []
    aks_user_pool_os_disk_type        = "Ephemeral"
  }
  wnpool = {
    aks_user_pool_vm_size             = "Standard_D4s_v3"
    aks_user_pool_enable_auto_scaling = false
    aks_user_pool_node_taints         = ["agentpool=window:NoSchedule"]
    aks_user_pool_os_type             = "Windows"
    aks_user_pool_zones               = []
    aks_user_pool_max_pods  = 40
    aks_user_pool_min_count = 0
  }
}
tags = {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "PROD"
  "RITM" : "RITM0032091"
}
########## k8s_workloads ######################
kubecost_ip = "10.171.0.242"
