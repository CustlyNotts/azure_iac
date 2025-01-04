subscription_id     = <subscription_id>
resource_group                    = "rg-bt-prod-green"
virtual_network                   = "vnet-btnwhub"
virtual_network_resource_group    = "rg-btnwhub"
subnet                            = "snet-bt-prod-green"
cluster_name                      = "aks-bt-prod-green"
kubernetes_version                = "1.26.6"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_network_policy                = "none"
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 2
aks_additional_node_pools = {
  btprodgreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 7
    aks_user_pool_max_count    = 20
  }
}
tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae",
  "ENV"               = "PROD"
  "RITM"              = "RITM00268"
}
########## k8s_workloads ######################
kubecost_ip = "10.223.66.73"
