subscription_id     = <subscription_id>
resource_group                    = "rg-mawani-boomi-nonprod"
virtual_network                   = "vnet-mawani-boomi-nonprod"
virtual_network_resource_group    = "rg-mawani-boomi-nonprod"
subnet                            = "snet-mawani-boomi-nonprod"
cluster_name                      = "aks-dtw-boomi-nonprod"
kubernetes_version                = "1.25.6"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D2s_v3"
aks_system_pool_max_pods          = 40
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_D2s_v3"
    aks_user_pool_min_count = 2
    aks_user_pool_max_count = 6
    aks_user_pool_max_pods  = 40
  }
}
tags = {
  "Application Name"  = "Boomi",
  "Application Owner" = "Veeresh Sodankar",
  "ENV"               = "TESTING"
}
########## k8s_workloads ######################
kubecost_ip = "10.152.0.47"
