subscription_id     = <subscription_id>
resource_group                    = "cargoes-prod"
virtual_network                   = "cargoes-platform-cluster-prod-vnet"
virtual_network_resource_group    = "cargoes-prod"
subnet                            = "cargoes-platform-cluster-prod-subnet-1"
cluster_name                      = "cargoes-platform-prod-cluster"
kubernetes_version                = "1.19.13"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_min_count         = 3
aks_system_pool_max_count         = 6
aks_system_pool_max_pods          = 110
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_max_count = 5
  }
}
tags = {
  "Application Name" : "Flow/datachain/logistics",
  "Application Owner" : "Ravi/Mostafa/Jaya",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = ""