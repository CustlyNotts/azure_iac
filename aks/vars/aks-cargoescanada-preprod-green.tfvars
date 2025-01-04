subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescanada-preprod"
virtual_network                = "vnet-cargoescanada-preprod"
virtual_network_resource_group = "rg-cargoescanada-preprod"
subnet                         = "snet-cargoescanada-preprod-green"
cluster_name                   = "aks-cargoescanada-preprod-green"
kubernetes_version             = "1.27.9"
aks_network_policy             = "overlay"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cargoesgre = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
dns_vnet_link = {
  pl-avd-dtw = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw"
  }
  vmbuild = {
    virtual_network_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build"
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PREPROD"
  "RITM" : "RITM0098148"
}
########## k8s_workloads ######################
#kubecost_ip = "10.212.0.122"