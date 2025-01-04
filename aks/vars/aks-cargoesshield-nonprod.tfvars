subscription_id     = <subscription_id>
resource_group                  = "rg-cargoesshield-nonprod"
virtual_network_resource_group  = "rg-cargoesshield-infra-nonprod"
virtual_network                 = "vnet-cargoesshield-nonprod"
subnet                          = "snet-aks-cargoesshield-nonprod"
cluster_name                    = "aks-cargoesshield-nonprod"
cluster_dns_prefix              = "aks-cargoesshield-nonprod"
kubernetes_version              = "1.26.6"
aks_system_pool_vm_size         = "Standard_D4s_v3"
aks_system_pool_os_disk_type    = "Ephemeral"
aks_system_pool_os_disk_size_gb = 100
aks_system_pool_min_count       = 1
aks_system_pool_max_count       = 5
aks_system_pool_zones           = []
aks_additional_node_pools = {
  crgsshield = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 30
    aks_user_pool_zones        = []
  }
}
tags = {
  "Application Owner" : "Ritesh Singh",
  "ENV" : "NONPROD",
  "Application Name" : "CargoesShield",
  "RITM" : "RITM0063496"
}
########## k8s_workloads ######################
aks_workloads_enabled = true
kubecost_ip           = ""