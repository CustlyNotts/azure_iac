subscription_id     = <subscription_id>
resource_group                 = "rg-ecommerce-dev"
virtual_network                = "vnet-ecommerce-nonprod"
virtual_network_resource_group = "rg-ecommerce-infra-nonprod"
subnet                         = "snet-aksnode-dev"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-dev"
cluster_name                   = "aks-ecommerce-dev"
cluster_dns_prefix             = "aks-ecommerce-dev"
kubernetes_version             = "1.28.3"
key_vault_secrets_provider     = true
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E8ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_min_count      = 1
aks_system_pool_max_count      = 10
aks_system_pool_max_pods       = 50
dns_vnet_link = {
  vnet-cargoeslogisitics_dev = {
    virtual_network_id = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev"
  }
  wvd = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RGWVDGlobal/providers/Microsoft.Network/virtualNetworks/VnetWVDGlobal"
  }
}
tags = {
  "Application Name"  = "Ecommerce (Dubuy & DM)",
  "Application Owner" = "Arup Sarkar",
  "RITM"              = "RITM0028793"
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.165.80.35"