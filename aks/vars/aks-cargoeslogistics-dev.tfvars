subscription_id     = <subscription_id>
resource_group                      = "rg-cargoesLogisticsplatform-DEV"
virtual_network                     = "vnet-cargoesLogisitics_dev"
virtual_network_resource_group      = "rg-cargoeslogisticsdev-infra"
subnet                              = "snet-aks-dev"
cluster_name                        = "aks-cargoeslogistics-dev"
kubernetes_version                  = "1.25.6"
aks_network_policy                  = "none"
key_vault_secrets_provider          = true
key_vault_secret_rotation_enabled   = true
aks_system_pool_name                = "cargopool"
aks_system_pool_vm_size             = "Standard_E8as_v4"
aks_system_pool_os_disk_type        = "Ephemeral"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_max_pods            = 100
aks_additional_node_pools = {
  logistics = {
    aks_user_pool_vm_size      = "Standard_E8as_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_pods     = 150
  }
}
tags = {
  "Application Name"  = "CargoesLogisticsPlatform"
  "Application Owner" = "Udit/Ravi.P"
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.242.16.130"