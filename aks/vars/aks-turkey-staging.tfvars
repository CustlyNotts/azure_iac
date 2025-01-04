subscription_id     = <subscription_id>
resource_group                 = "rg-turkey-staging"
virtual_network                = "vnet-turkey-nonprod"
virtual_network_resource_group = "rg-turkey-infra-nonprod"
subnet                         = "snet-aksnode-turkey-staging"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-turkey-staging"
cluster_name                   = "aks-turkey-staging"
cluster_dns_prefix             = "aks-turkey-staging" #TD
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  turkeystg = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 15
    aks_user_pool_max_pods     = 12
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "turkey",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "STAGING",
  "RITM" : "RITM0036714"
}

########## k8s_workloads ######################
kubecost_ip = "10.170.136.11"