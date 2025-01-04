subscription_id     = <subscription_id>
resource_group                   = "rg-account-dev"
virtual_network                  = "vnet-account-dev"
virtual_network_resource_group   = "rg-account-dev"
subnet                           = "snet-account-dev"
cluster_name                     = "aks-account-dev"
kubernetes_version               = "1.26.6"
key_vault_secrets_provider       = true
aad_kubernetes_rbac              = true
aad_kubernetes_rbac_admin_groups = ["b8adb124-02d3-4880-ba85-1c6da72111aa", "ce64884e-156c-40c7-9337-0e096bf44d74", "cf3b996e-84b3-4696-9932-2081a8d7418e", "43ace4f6-ae55-4ea9-8aff-b0b994d893d4"]
aks_network_policy               = "none"
aks_system_pool_vm_size          = "Standard_D8s_v3"
aks_system_pool_os_disk_type     = "Ephemeral"
aks_system_pool_min_count        = 2
aks_system_pool_max_count        = 15
aks_additional_node_pools = {
  accountdev = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 15
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "Mawani CNS"
  "Application Owner" : "Daniel Stuart"
  "ENV" : "DEV"
}

########## k8s_workloads ######################
kubecost_ip = "10.211.16.35"