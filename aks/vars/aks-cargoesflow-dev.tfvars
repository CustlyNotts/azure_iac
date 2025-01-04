subscription_id     = <subscription_id>
resource_group                    = "rg-cargoesflow-dev"
virtual_network                   = "vnet-cargoesflow-dev"
virtual_network_resource_group    = "rg-cargoesflow-infra"
subnet                            = "snet-aksnode-dev"
pod_subnet_enabled                = true
pod_subnet                        = "snet-akspod-dev"
cluster_name                      = "aks-cargoesflow-dev"
cluster_dns_prefix                = "aks-cargoesflow-dev" #TD
kubernetes_version                = "1.26.10"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_additional_node_pools = {
  flow = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_min_count = 2
    aks_user_pool_max_count = 4
    aks_user_pool_max_pods  = 250
  }
}
tags = {
  "Application Name" : "Cargoes Flow",
  "Application Owner" : "Mostafa",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.243.8.8"