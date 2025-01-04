subscription_id     = <subscription_id>
resource_group                 = "rg-ecommerce-preprod"
virtual_network                = "vnet-ecommerce-nonprod"
virtual_network_resource_group = "rg-ecommerce-infra-nonprod"
subnet                         = "snet-aksnode-preprod"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-preprod"
cluster_name                   = "aks-ecommerce-preprod"
cluster_dns_prefix             = "aks-ecommerce-preprod"
kubernetes_version             = "1.28.3"
aks_network_policy             = "none"
key_vault_secrets_provider     = true
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E8ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_max_count      = 7
aks_system_pool_max_pods       = 50
tags = {
  "Application Name"  = "Ecommerce (Dubuy & DM)",
  "Application Owner" = "Shaloof/Kamlesh",
  "RITM"              = "RITM0028793"
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.165.82.7"