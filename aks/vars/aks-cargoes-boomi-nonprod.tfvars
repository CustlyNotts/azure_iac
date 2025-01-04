subscription_id     = <subscription_id>
resource_group                 = "rg-cargoes-boomi-nonprod"
virtual_network                = "vnet-cargoes-boomi-nonprod"
virtual_network_resource_group = "rg-cargoes-boomi-nonprod"
subnet                         = "snet-cargoes-boomi-nonprod"
cluster_name                   = "aks-cargoes-boomi-nonprod"
kubernetes_version             = "1.25.5"
aks_system_pool_name           = "agentpool"
aks_system_pool_max_count      = 4
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size = "Standard_D2s_v3"
  }
}
tags = {
  "Application Name" : "Boomi",
  "Application Owner" : "Veeresh Sodankar",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.139.8.121"