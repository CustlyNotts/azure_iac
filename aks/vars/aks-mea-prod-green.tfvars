subscription_id     = <subscription_id>
resource_group                 = "rg-mea-prod-green"
virtual_network                = "vnet-mea-prod"
virtual_network_resource_group = "rg-mea-infra-prod"
subnet                         = "snet-aksnode-mea-prod-green"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-mea-prod-green"
cluster_name                   = "aks-mea-prod-green"
kubernetes_version             = "1.26.12"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 2
aks_system_pool_max_count      = 4
sechub_link_name               = "sechub"
wvd_link_name                  = "wvdall"
aks_additional_node_pools = {
  meaprodgreen = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 2
    aks_user_pool_max_pods     = 250
  }
}
tags = {
  "Application Name"  = "mea"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "PROD"
}

########## k8s_workloads ######################
kubecost_ip = "10.170.40.13"