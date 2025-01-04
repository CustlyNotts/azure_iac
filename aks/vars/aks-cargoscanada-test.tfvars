subscription_id     = <subscription_id>
resource_group                 = "rg-cargoscanada-test"
virtual_network                = "vnet-cargoescanada-test"
virtual_network_resource_group = "rg-cargoscanada-test"
subnet                         = "snet-core-stg"
cluster_name                   = "aks-cargoscanada-test"
cluster_dns_prefix             = "cargoescanada-test"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  cccanadatest = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  canadatest = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
  }

}
dns_vnet_link = {
  vmbuild = {
    virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}
tags = {
  "Application Name" : "cargoes canada UAT",
  "Application Owner" : "Danial",
  "ENV" : "TESTING"
}
########## k8s_workloads ######################
kubecost_ip = "10.222.248.239"