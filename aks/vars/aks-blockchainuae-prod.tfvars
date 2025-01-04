subscription_id     = <subscription_id>
resource_group                      = "rg-blockchain-prod"
virtual_network                     = "vnet-blockchain-prod"
virtual_network_resource_group      = "rg-blockchain-infra-prod"
subnet                              = "snet-aksnode-prod"
pod_subnet_enabled                  = true
pod_subnet                          = "snet-akspod-prod"
cluster_name                        = "aks-blockchainuae-prod"
cluster_dns_prefix                  = "aks-blockchainuae-prod"
kubernetes_version                  = "1.28.12"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_network_policy                  = "none"
aks_system_pool_vm_size             = "Standard_D4s_v3"
aks_system_pool_enable_auto_scaling = true
aks_system_pool_node_count          = 1
aks_system_pool_max_pods            = 45
aks_system_pool_max_count           = 4
aks_system_pool_name                = "systempol"
temporary_name_for_rotation   = "systempooltm"
aks_system_pool_zones               = []
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size             = "Standard_E2bds_v5"
    aks_user_pool_enable_auto_scaling = true
    aks_user_pool_node_count          = 3
    aks_user_pool_max_pods            = 60
    aks_user_pool_max_count            = 7
    aks_user_pool_min_count            = 1
    aks_user_pool_zones               = []
  }
}
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.191.44.26"