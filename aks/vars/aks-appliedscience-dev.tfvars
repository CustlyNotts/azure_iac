subscription_id     = <subscription_id>
resource_group                 = "rg-appliedscience-aks-dev"
virtual_network                = "vnet-appliedscience"
virtual_network_resource_group = "rg-network"
subnet                         = "snet-aks-appliedscience-dev"
cluster_name                   = "aks-appliedscience-dev"
kubernetes_version             = "1.24.9"
key_vault_secrets_provider     = true
aks_system_pool_name           = "agentpool"
aks_system_pool_max_count      = 2
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_max_count = 3
    aks_user_pool_max_pods  = 70
  }
}
container_registries = {
  acrappliedsciencedev = {
    resource_group = "rg-costapi-dev"
  }
}
tags = {
  "Application Name" : "Applied Science"
  "Application Owner" : "Patch Uthaisombut"
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.157.4.103"