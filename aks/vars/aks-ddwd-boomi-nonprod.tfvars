subscription_id     = <subscription_id>
resource_group                    = "rg-ddw-boomi-nonprod"
virtual_network                   = "vnet-ddwd-boomi-nonprod"
virtual_network_resource_group    = "rg-ddw-boomi-nonprod"
subnet                            = "Snet-Boominonprod"
cluster_name                      = "aks-ddwd-boomi-nonprod"
cluster_automatic_channel_upgrade = "patch"
kubernetes_version                = "1.23.15"
aks_network_policy                = "none"
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D2s_v3"
aks_system_pool_max_count         = 1
aks_system_pool_max_pods          = 110
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size   = "Standard_D2s_v3"
    aks_user_pool_max_count = 5
  }
}
tags = {
  "Application Name"  = "Boomi nonprod",
  "Application Owner" = "DDWD Cloud team",
  "ENV"               = "UAT"
}
########## k8s_workloads ######################
kubecost_ip = "10.252.64.7"