subscription_id     = <subscription_id>
resource_group                      = "rg-ros-nonprod"
virtual_network                     = "Vnet-ROS-NonProd"
virtual_network_resource_group      = "rg-ros-nonprod"
subnet                              = "snet-ros-aks-nonprod-nodes"
cluster_name                        = "aks-nonprod-ros"
sku_tier                            = "Standard"
kubernetes_version                  = "1.29.5"
aks_system_pool_enable_auto_scaling = true
aks_system_pool_vm_size             = "Standard_E8ds_v4"
aks_system_pool_max_count           = 20
aks_system_pool_max_pods            = 70
aks_system_pool_os_disk_type        = "Ephemeral"
key_vault_secrets_provider          = true
aks_additional_node_pools = {
  usernodpol = {
    aks_user_pool_vm_size      = "Standard_E8ds_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 20
    aks_user_pool_max_pods     = 60
  }
  winpl = {
    aks_user_pool_vm_size     = "Standard_D4s_v3"
    aks_user_pool_os_type     = "Windows"
    aks_user_pool_max_count   = 0
    aks_user_pool_min_count   = 0
    aks_user_pool_max_pods    = 40
    aks_user_pool_enable_auto_scaling = false
    aks_user_pool_node_taints = ["agentpool=window:NoSchedule"]
  }
}
dns_vnet_link = {
  aks-nonprod-ros-dns-0ljetnga = {
    virtual_network_id = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/virtualNetworks/Vnet-ROS-NonProd"
  }
}
container_registries = {
  acrrosnonprod = {
    resource_group = "rg-ros-nonprod"
  }
}
tags = {
  "Application Name" : "ROS"
  "Application Owner" : "Tapabrata Dasgupta"
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.171.152.151"



