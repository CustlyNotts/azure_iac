subscription_id     = <subscription_id>
resource_group                    = "rg_cargoesRunner_dev"
virtual_network                   = "vnet-cargoesRunnernonprod"
virtual_network_resource_group    = "rg_cargoesRunner_Vnet_nonprod"
subnet                            = "snet-nonprod"
cluster_name                      = "aks-cargoesrunner-nonprod"
cluster_dns_prefix                = "cargoesRunner-nonprod" #TD
kubernetes_version                = "1.25.5"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_max_pods          = 45
aks_additional_node_pools = {
  appndpol = {
    aks_user_pool_vm_size      = "Standard_E8as_v4"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 15
  }
}
tags = {
  "Application Name"  = "Cargoes Runner",
  "Application Owner" = "Jabeer Yusuf",
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.153.225.93"