subscription_id     = <subscription_id>
resource_group                  = "rg-cargoesshield-prod"
virtual_network_resource_group  = "rg-cargoesshield-infra-prod"
virtual_network                 = "vnet-cargoesshield-prod"
subnet                          = "snet-aks-cargoesshield-prod"
cluster_name                    = "aks-cargoesshield-prod"
cluster_dns_prefix              = "aks-cargoesshield-prod"
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
  "ENV" : "PROD",
  "Application Name" : "CargoesShield",
  "RITM" : "RITM0063496"
}
########## k8s_workloads ######################
aks_workloads_enabled = true
kubecost_ip           = ""