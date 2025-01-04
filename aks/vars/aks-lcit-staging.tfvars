subscription_id     = <subscription_id>
resource_group                 = "rg-lcit-staging"
virtual_network                = "vnet-lcit-nonprod"
virtual_network_resource_group = "rg-lcit-infra-nonprod"
subnet                         = "snet-aksnode-lcit-staging"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-lcit-staging"
cluster_name                   = "aks-lcit-staging"
cluster_dns_prefix             = "aks-lcit-staging"
kubernetes_version             = "1.26.6"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  # lcitstaging = {
  #aks_user_pool_vm_size      = "Standard_D8s_v3"
  # aks_user_pool_os_disk_type = "Ephemeral"
  #  aks_user_pool_max_pods     = 12
  # }
  lcitstaging = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "LCIT",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "STAGING",
  "RITM" : "RITM0028793"
}
########## k8s_workloads ######################
kubecost_ip = "10.170.8.12"