subscription_id     = <subscription_id>
resource_group                 = "rg-accountsuat"
virtual_network                = "vnet-accountsuat"
virtual_network_resource_group = "rg-accountsuat"
subnet                         = "snet-accountsuat"
cluster_name                   = "aks-accounts-uat"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_vm_size        = "Standard_D8s_v3"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_max_count      = 15
aks_system_pool_max_pods       = 10
aks_additional_node_pools = {
  accountuat = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name"  = "aks",
  "Application Owner" = "Shaloof/Nowphal",
  "ENV"               = "DEV"
}

########## k8s_workloads ######################
kubecost_ip = "172.16.32.76"