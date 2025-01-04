subscription_id     = <subscription_id>
resource_group                    = "rg-cargoeslogistics-prod"
virtual_network                   = "vnet-cargoeslogistics-prod"
virtual_network_resource_group    = "rg-cargoeslogistics-infra-prod"
subnet                            = "snet-aksnode-prod"
pod_subnet_enabled                = true
pod_subnet                        = "snet-akspod-prod"
cluster_name                      = "aks-cargoeslogistics-prod"
cluster_dns_prefix                = "aks-cargoeslogistics-prod"
kubernetes_version                = "1.25.6"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_zones             = []
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_min_count = 4
    aks_user_pool_zones     = []
  }
}
tags = {
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Ravi Pandey",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.242.40.17"