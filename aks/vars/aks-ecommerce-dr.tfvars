subscription_id     = <subscription_id>
resource_group                 = "rg-ecommerce-dr"
virtual_network                = "vnet-ecommerce-dr"
virtual_network_resource_group = "rg-ecommerce-infra-dr"
subnet                         = "snet-ecommerce-aks-dr"
cluster_name                   = "aks-ecommerce-dr"
cluster_dns_prefix             = "aks-ecommerce-dr"
kubernetes_version             = "1.28.9"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_vm_size        = "Standard_E4ds_v4"
aks_system_pool_min_count      = 1
aks_system_pool_max_count      = 3
aks_additional_node_pools = {
  ecomm = {
    aks_user_pool_vm_size      = "Standard_E8ds_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 25
  }
}
dns_vnet_link = {
  wvd = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RGWVDGlobal/providers/Microsoft.Network/virtualNetworks/VnetWVDGlobal"
  }
}
tags = {
  "Application Name"  = "Ecommerce",
  "Application Owner" = "Arup Sarkar",
  "RITM"              = "RITM0028793"
  "ENV"               = "DR"
}
########## k8s_workloads ######################
#kubecost_ip = "10.165.162.31"