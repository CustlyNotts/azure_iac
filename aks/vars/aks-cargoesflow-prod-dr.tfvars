subscription_id     = <subscription_id>
resource_group                    = "rg-cargoesflow-prod-dr"
virtual_network                   = "vnet-cargoesflow-dr"
virtual_network_resource_group    = "rg-cargoesflow-dr-infra"
subnet                            = "snet-aksnode-prod-dr"
cluster_name                      = "aks-cargoesflow-prod-dr"
kubernetes_version                = "1.27.7"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_zones             = ["1", "2", "3"]
aks_system_pool_max_count         = 3
aks_system_pool_min_count         = 1
aks_additional_node_pools = {
  flow = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 3
    aks_user_pool_zones        = ["1", "2"]
  }
}

tags = {
  "Application Name" : "Cargoes Flow",
  "Application Owner" : "Mostafa/RaviKumar",
  "ENV" : "DR"
}
########## k8s_workloads #######################
kubecost_ip = "10.2.128.99"
