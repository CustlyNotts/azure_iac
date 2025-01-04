subscription_id     = <subscription_id>
resource_group                    = "cargoes-staging"
virtual_network                   = "cargoes-platform-cluster-staging-vnet"
virtual_network_resource_group    = "cargoes-staging"
subnet                            = "cargoes-platform-cluster-staging-subnet-1"
cluster_name                      = "cargoes-platform-staging-cluster"
kubernetes_version                = "1.29.4"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_network_policy                = "none"
aks_system_pool_name              = "poolmemopt"
aks_system_pool_os_disk_type      = "Ephemeral"
aks_system_pool_vm_size           = "Standard_E4ds_v4"
aks_system_pool_max_count         = 15
aks_system_pool_max_pods          = 60
sku_tier                          = "Standard"
temporary_name_for_rotation   = "systemtmp"
tags = {
  "Application Name"  = "Cargoes Platform",
  "Application Owner" = "Ravi Pandey",
  "ENV"               = "TESTING"
}
###################### k8s_workloads ######################
kubecost_ip = "10.240.224.178"

