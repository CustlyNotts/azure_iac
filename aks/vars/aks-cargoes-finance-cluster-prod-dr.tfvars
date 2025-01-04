subscription_id     = <subscription_id>
resource_group                    = "rg-cargoes-finance-prod-dr"
virtual_network                   = "vnet-cargoes-finance-pro-dr"
virtual_network_resource_group    = "rg-cargoes-finance-prod-dr"
subnet                            = "snet-cargoes-finance-s1-prod-dr"
cluster_name                      = "aks-cargoes-finance-cluster-prod-dr"
cluster_dns_prefix                = "cargoes-finance-platform-prod-dr"
kubernetes_version                = "1.26.0"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "standard_d4s_v3"
aks_system_pool_max_pods          = 60
tags = {
  "Application Name"  = "Cargoes Finance"
  "Application Owner" = "Abhinav Sharma"
  "ENV"               = "DR"
}
########## k8s_workloads ######################
kubecost_ip = "10.240.44.8"