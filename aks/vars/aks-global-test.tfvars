subscription_id     = <subscription_id>
resource_group                 = "rg-global-test"
virtual_network                = "vnet-global-nonprod"
virtual_network_resource_group = "rg-global-infra-nonprod"
subnet                         = "snet-aksnode-global-test"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-global-test"
cluster_name                   = "aks-global-test"
cluster_dns_prefix             = "aks-global-test"
kubernetes_version             = "1.26.6"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  globaltest = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name"  = "global"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "TESTING"
  "RITM"              = "RITM0040162"
}
########## k8s_workloads ######################
kubecost_ip = "10.170.168.8"