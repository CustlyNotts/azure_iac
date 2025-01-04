subscription_id     = <subscription_id>
resource_group                 = "rg-cns-dev"
virtual_network                = "CNSNetwork"
virtual_network_resource_group = "cnsnw"
subnet                         = "snet-aksnode-cns-dev"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-cns-dev"
cluster_name                   = "aks-cns-dev"
kubernetes_version             = "1.26.6"
cluster_dns_prefix             = "aks-cns-dev"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  cnsdev = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_pods     = 20
  }
  cargoespool = {
    aks_user_pool_vm_size      = "Standard_E4ads_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
  cnsdev = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }
}
tags = {
  "Application Name" : "Mawani",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV",
  "RITM" : "RITM0042444"
}
########## k8s_workloads ######################
kubecost_ip = "172.22.192.7"