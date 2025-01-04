subscription_id     = <subscription_id>
resource_group                 = "rg-dpworldcms-nonprod"
virtual_network                = "vnet-dpworldcms-nonprod"
virtual_network_resource_group = "rg-dpworldcms-nonprod-infra"
subnet                         = "snet-dpworld-nonprod-aks"
cluster_name                   = "aks-dpworldcms-nonprod"
cluster_dns_prefix             = "aks-dpworldcms-nonprod"
kubernetes_version             = "1.29.2"
key_vault_secrets_provider     = true
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E4ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_min_count      = 1
aks_system_pool_max_count      = 10
aks_system_pool_max_pods       = 70

tags = {
  "Application Name"  = "Dpworld CMS ",
  "Application Owner" = "Bilal Adham",
  "RITM"              = "RITM0012345"
  "ENV"               = "NonProd"
}