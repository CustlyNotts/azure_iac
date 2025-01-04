subscription_id     = <subscription_id>
resource_group                 = "rg-bttest-aks"
virtual_network                = "vnet-btnwhub"
virtual_network_resource_group = "rg-btnwhub"
subnet                         = "snet-btdemo"
cluster_name                   = "aks-bttest"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 3
aks_additional_node_pools = {
  bttest = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 8
    aks_user_pool_max_pods     = 50
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart",
  "ENV"               = "TESTING"
  "RITM"              = "00000"
}
########## k8s_workloads ######################
kubecost_ip = "10.223.0.244"