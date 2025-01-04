subscription_id     = <subscription_id>
resource_group                      = "rg-bigid-prod"
virtual_network                     = "vnet-big-id-prod"
virtual_network_resource_group      = "rg-bigid-prod"
subnet                              = "snet-big-id-aks-prod"
cluster_name                        = "aks-bigid-prod"
cluster_dns_prefix                  = "aks-bigid-prod"
kubernetes_version                  = "1.28.5"
aks_network_policy                  = "overlay"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_name                = "system"
aks_system_pool_vm_size             = "Standard_D2s_v3"
aks_system_pool_zones               = ["1", "2", "3"]
aks_system_pool_enable_auto_scaling = false
aks_additional_node_pools = {
  bigidpool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 15
    aks_user_pool_max_pods     = 100
  }
}

tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "PROD",
  "Application Name" : "BigID",
  "RITM" : "RITM0093495",
}
########## k8s_workloads ######################
kubecost_ip = "10.48.16.200"
