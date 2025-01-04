subscription_id     = <subscription_id>
resource_group                      = "rg-trackingservice-prod"
virtual_network                     = "Vnet-trackingservice-prod"
virtual_network_resource_group      = "rg-cargoestrackingservice-infra-prod"
subnet                              = "snet-akspod-prod"
cluster_name                        = "aks-trackingservice-prod"
cluster_dns_prefix                  = "aks-trackingservice-prod"
kubernetes_version                  = "1.26.3"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_name                = "system"
aks_system_pool_vm_size             = "Standard_D4s_v3"
aks_system_pool_zones               = ["1", "2", "3"]
aks_system_pool_enable_auto_scaling = false
aks_additional_node_pools = {
  user = {
    aks_user_pool_vm_size      = "Standard_E8ds_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 3
    aks_user_pool_zones        = ["1", "2"]
  }
}



tags = {
  "Application Name" : "Tracking Service",
  "Application Owner" : "Mohit/Ankit.K",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.143.72.8"