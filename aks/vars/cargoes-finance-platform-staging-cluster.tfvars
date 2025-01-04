subscription_id     = <subscription_id>
resource_group                    = "cargoes-finance-staging"
virtual_network                   = "cargoes-finance-staging-vnet"
virtual_network_resource_group    = "cargoes-finance-staging"
subnet                            = "cargoes-finance-platform-cluster-staging-subnet-1"
cluster_name                      = "cargoes-finance-platform-staging-cluster"
cluster_dns_prefix                = "cargoes-finance-platform-staging"
kubernetes_version                = "1.26.0"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_network_policy                = "none"
rbac_enabled                      = false
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "standard_d2_v3"
aks_system_pool_min_count         = 3
aks_system_pool_max_count         = 4
aks_system_pool_max_pods          = 60
dns_vnet_link = {
  wvd = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RGWVDGlobal/providers/Microsoft.Network/virtualNetworks/VnetWVDGlobal"
  }
}
tags = {
  "Application Name" : "Cargoes Finance",
  "Application Owner" : "Abhinav Sharma",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.240.20.64"