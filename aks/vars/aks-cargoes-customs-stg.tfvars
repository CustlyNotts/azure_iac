subscription_id     = <subscription_id>
resource_group                 = "rg-cargoes-app"
virtual_network                = "vnet-cargoes-customs"
virtual_network_resource_group = "rg-cargoes-app"
subnet                         = "snet-aks-cargoes-customs-stg"
cluster_name                   = "aks-cargoes-customs-stg"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "sytempool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  cargoes = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_zones     = ["1", "2", "3"]
    aks_user_pool_max_count = 3
  }
}
dns_vnet_link = {
  wvddtw = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw"
  }
}
tags = {
  "Application Name"  = "Cargoes app",
  "Application Owner" = "hussain.hashimi@dpworld.com",
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.155.0.99"