subscription_id     = <subscription_id>
resource_group                 = "rg-wms-nonprod"
virtual_network                = "vnet-wms-nonprod"
virtual_network_resource_group = "rg-wms-infra-nonprod"
subnet                         = "snet-wms-nonprod-aks"
cluster_name                   = "aks-wms-nonprod"
cluster_dns_prefix             = "aks-wms-nonprod"
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
  "ENV"               = "NonProd"
}