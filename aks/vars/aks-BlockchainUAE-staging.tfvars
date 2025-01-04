subscription_id     = <subscription_id>
resource_group                 = "rg-BlockchainUAEstaging"
virtual_network                = "vnet-BlockchainUAE-staging"
virtual_network_resource_group = "rg-BlockchainUAEstaging"
subnet                         = "snet-blockchain"
cluster_name                   = "aks-BlockchainUAE-staging"
cluster_dns_prefix             = "BlockchainUAE-Stag"
kubernetes_version             = "1.29.5"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
sku_tier                            = "Standard"
aks_system_pool_name           = "systempol"
aks_system_pool_vm_size        = "Standard_D4s_v3"
temporary_name_for_rotation   = "agentpooltmp"
aks_system_pool_max_count      = 5
aks_system_pool_max_pods       = 45
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_E2bds_v5"
    aks_user_pool_min_count = 1
    aks_user_pool_max_count = 6
    aks_user_pool_max_pods  = 50
  }
}
tags = {
  "Application Name" : "Cross Border Ecommerce Gate Pass Service"
  "Application Owner" : "Jay Li / Jayakrishna Alwar"
  "ENV" : "STAGING"
}
########## k8s_workloads ######################
kubecost_ip = "10.191.0.62"
