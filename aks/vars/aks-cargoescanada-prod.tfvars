subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescanada-prod"
virtual_network                = "vnet-cargoscanada-prod"
virtual_network_resource_group = "rg-cargoescanada-prod"
subnet                         = "snet-cargoscanada-prod"
cluster_name                   = "aks-cargoescanada-prod"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  canadaprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 6
    aks_user_pool_max_count    = 30
    aks_user_pool_max_pods     = 10
  }
}
dns_vnet_link = {
  vmbuild = {
    virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}
tags = {
  "Application Name" : "Cargoes Canada ",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.210.128.212"