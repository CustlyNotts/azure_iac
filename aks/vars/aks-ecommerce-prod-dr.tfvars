subscription_id     = <subscription_id>
resource_group                 = "rg-ecommerce-prod-dr"
virtual_network                = "vnet-ecommerce-prod-dr"
virtual_network_resource_group = "rg-ecommerce-infra-prod-dr"
subnet                         = "snet-aksnode-prod-dr"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-prod-dr"
cluster_name                   = "aks-ecommerce-prod-dr"
cluster_dns_prefix             = "aks-ecommerce-prod-dr"
kubernetes_version             = "1.28.3"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 3
aks_system_pool_max_count      = 9
aks_additional_node_pools = {
  ecomm = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 3
    aks_user_pool_max_count    = 30
  }
}
dns_vnet_link = {
  wvd = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RGWVDGlobal/providers/Microsoft.Network/virtualNetworks/VnetWVDGlobal"
  }
}
tags = {
  "Application Name"  = "Ecommerce (Dubuy & DM)",
  "Application Owner" = "Shaloof/vishank",
  "RITM"              = "RITM0028793"
  "ENV"               = "DR"
}
########## k8s_workloads ######################
kubecost_ip = "10.165.162.31"