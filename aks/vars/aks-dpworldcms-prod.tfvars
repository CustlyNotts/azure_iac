subscription_id     = <subscription_id>
resource_group                 = "rg-dpworldcms-prod"
virtual_network                = "vnet-dpworldcms-prod"
virtual_network_resource_group = "rg-dpworldcms-prod-infra"
subnet                         = "snet-dpworld-prod-aks"
cluster_name                   = "aks-dpworldcms-prod"
cluster_dns_prefix             = "aks-dpworldcms-prod"
kubernetes_version             = "1.29.2"
key_vault_secrets_provider     = true
aks_system_pool_name           = "appool"
aks_system_pool_vm_size        = "Standard_E4ds_v4"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_min_count      = 1
aks_system_pool_max_count      = 10
aks_system_pool_max_pods       = 50

tags = {
  "Application Name"  = "Dpworld CMS ",
  "Application Owner" = "Bilal Adham",
  "RITM"              = "RITM0012345"
  "ENV"               = "Prod"
}