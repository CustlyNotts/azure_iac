subscription_id     = <subscription_id>
resource_group                 = "rg-ecommerce-prod"
virtual_network                = "vnet-ecommerce-prod"
virtual_network_resource_group = "rg-ecommerce-infra-prod"
subnet                         = "snet-aksnode-prod"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-prod"
cluster_name                   = "aks-ecommerce-prod"
cluster_dns_prefix             = "aks-ecommerce-prod"
kubernetes_version             = "1.28.3"
key_vault_secrets_provider     = true
aks_network_policy             = "none"
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E8ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_max_count      = 28
aks_system_pool_max_pods       = 50
aks_system_pool_zones          = []
dns_vnet_link = {
  wvd = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RGWVDGlobal/providers/Microsoft.Network/virtualNetworks/VnetWVDGlobal"
  }
}
tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD",
  "RITM" : "RITM0028793"
}

########## k8s_workloads ######################
kubecost_ip = "10.165.104.34"