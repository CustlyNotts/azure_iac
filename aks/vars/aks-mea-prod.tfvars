subscription_id     = <subscription_id>
resource_group                    = "rg-mea-prod"
virtual_network                   = "vnet-mea-prod"
virtual_network_resource_group    = "rg-mea-infra-prod"
subnet                            = "snet-aksnode-mea-prod"
pod_subnet_enabled                = true
pod_subnet                        = "snet-akspod-mea-prod"
cluster_name                      = "aks-mea-prod"
cluster_dns_prefix                = "aks-mea-prod"
kubernetes_version                = "1.25.5"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_min_count         = 3
aks_system_pool_max_count         = 5
aks_system_pool_zones             = []
aks_additional_node_pools = {
  meaprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 3
    aks_user_pool_max_count    = 15
    aks_user_pool_max_pods     = 12
    aks_user_pool_zones        = []
  }
}
tags = {
  "Application Name" : "mea",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "PROD",
  "RITM" : "RITM0035267"
}
########## k8s_workloads ######################
aks_workloads_enabled = false
kubecost_ip           = "10.170.104.13"