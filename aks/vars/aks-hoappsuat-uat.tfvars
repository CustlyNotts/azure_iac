subscription_id     = <subscription_id>
resource_group                    = "rg-hoappsuat"
virtual_network                   = "vnet-hoappsuat"
virtual_network_resource_group    = "rg-hoappsuat"
subnet                            = "snet-hoappsuat"
cluster_name                      = "aks-hoappsuat-uat"
cluster_dns_prefix                = "hoappsuat"
kubernetes_version                = "1.27.7"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_B2s"
aks_system_pool_max_count         = 8
aks_system_pool_max_pods          = 46
aks_additional_node_pools = {
  hoapps = {
    aks_user_pool_vm_size   = "Standard_B2s"
    aks_user_pool_max_count = 8
  }
  userpool = {
    aks_user_pool_vm_size   = "Standard_E2s_v3"
    aks_user_pool_os_disk_type = "Managed"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 250
  }
}
tags = {
  "Application Name"  = "Corporate Apps",
  "Application Owner" = "Shaloof/Nowphal",
  "Creator"           = "Bastian AZadmin"
  "ENV"               = "TESTING"
}
########## k8s_workloads ######################
kubecost_ip = "10.234.1.1"