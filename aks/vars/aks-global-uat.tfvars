subscription_id     = <subscription_id>
resource_group                    = "rg-global-uat"
virtual_network                   = "vnet-global-nonprod"
virtual_network_resource_group    = "rg-global-infra-nonprod"
subnet                            = "snet-aks-global-uat"
cluster_name                      = "aks-global-uat"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
kubernetes_version                = "1.26.6"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_additional_node_pools = {
  globaluat = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "CCS"
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV" : "UAT"
}
########## k8s_workloads ######################
kubecost_ip = "10.170.176.63"
