subscription_id     = <subscription_id>
resource_group                 = "rg-wms-prod"
virtual_network                = "vnet-wms-prod"
virtual_network_resource_group = "rg-wms-infra-prod"
subnet                         = "snet-wms-prod-aks"
cluster_name                   = "aks-wms-prod"
cluster_dns_prefix             = "aks-wms-prod"
kubernetes_version             = "1.29.4"
key_vault_secrets_provider     = true
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E4ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_min_count      = 1
aks_system_pool_max_count      = 10
aks_system_pool_max_pods       = 60

tags = {
  "Application Name"  = "Warehouse Management System",
  "Application Owner" = "Sandeep Gupta",
  "RITM"              = "RITM0097856"
  "ENV"               = "Prod"
}