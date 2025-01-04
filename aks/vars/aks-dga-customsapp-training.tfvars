subscription_id     = <subscription_id>
resource_group                    = "rg-dga-customsapp-training"
virtual_network                   = "vnet-dga-customsapp-eastus-training"
virtual_network_resource_group    = "rg-dga-customsapp-training"
subnet                            = "snet-dga-customsapp-training-aks-eastus"
cluster_name                      = "aks-dga-customsapp-training"
cluster_dns_prefix                = "dga-training"
kubernetes_version                = "1.25.5"
role_based_access_control_enabled = false
aks_network_policy                = "none"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 2
aks_additional_node_pools = {
  dgadevpool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_max_count = 3
  }
  dgaqapool = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_max_count = 5
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
  wvd-dtw = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw"
  }
}
tags = {
  "Application Name" : "DGA",
  "Application Owner" : "hussain.hashimi@dpworld.com",
  "RITM" : "RITM0012345",
  "ENV" : "training"
}

########## k8s_workloads ######################
kubecost_ip = "10.233.32.179"