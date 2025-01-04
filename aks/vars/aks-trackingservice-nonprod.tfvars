subscription_id     = <subscription_id>
resource_group                      = "rg-trackingservice-dev"
virtual_network                     = "Vnet-trackingservice-dev"
virtual_network_resource_group      = "rg-trackingservice-dev-infra"
subnet                              = "snet-aks-nonprod"
cluster_name                        = "aks-trackingservice-nonprod"
cluster_dns_prefix                  = "aks-trackingservice-nonprod"
kubernetes_version                  = "1.28.3"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_name                = "system"
aks_system_pool_vm_size             = "Standard_D4s_v3"
aks_system_pool_zones               = ["1", "2", "3"]
aks_system_pool_enable_auto_scaling = false
aks_additional_node_pools = {
  trackingpool = {
    aks_user_pool_vm_size      = "Standard_D4s_v5"
    aks_user_pool_os_disk_type = "Managed"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 15
    aks_user_pool_max_pods     = 70
  }
}



tags = {
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay Li/ Bittu Lal",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.143.32.8"
