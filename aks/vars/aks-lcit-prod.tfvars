subscription_id     = <subscription_id>
resource_group                 = "rg-lcit-prod"
virtual_network                = "vnet-lcit-prod"
virtual_network_resource_group = "rg-lcit-infra-prod"
subnet                         = "snet-aksnode-lcit-prod"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-lcit-prod"
cluster_name                   = "aks-lcit-prod"
cluster_dns_prefix             = "aks-lcit-prod"
kubernetes_version             = "1.26.6"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 4
aks_system_pool_max_count      = 5
aks_system_pool_zones          = []
aks_additional_node_pools = {
  lcitprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 3
    aks_user_pool_max_count    = 15
  }
}
tags = {
  "Application Name" : "lcit",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "AutoShutdown" : "true",
  "ENV" : "PROD",
  "RITM" : "RITM0037195"
}
########## k8s_workloads ######################
kubecost_ip = "10.170.40.13"