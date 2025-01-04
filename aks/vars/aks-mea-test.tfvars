subscription_id     = <subscription_id>
resource_group                 = "rg-mea-test"
virtual_network                = "vnet-mea-nonprod"
virtual_network_resource_group = "rg-mea-infra-nonprod"
subnet                         = "snet-aksnode-mea-test"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-mea-test"
cluster_name                   = "aks-mea-test"
cluster_dns_prefix             = "aks-mea-test"
kubernetes_version             = "1.26.6"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  meatest = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  meatest = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name"  = "mea"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "TESTING"
  "RITM"              = "RITM0034653"
}
########## k8s_workloads ######################
kubecost_ip = "10.170.72.7"