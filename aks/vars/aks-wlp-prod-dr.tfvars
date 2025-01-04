subscription_id     = <subscription_id>
resource_group                      = "rg-wlp-prod-dr"
virtual_network                     = "vnet-wlp-prod-dr-uaecentral"
virtual_network_resource_group      = "rg-wlp-prod-dr"
subnet                              = "snet-wlp-prod-dr-aks-uaecentral"
cluster_name                        = "aks-wlp-prod-dr"
cluster_dns_prefix                  = "wlpproddr"
kubernetes_version                  = "1.25.5"
aks_network_policy                  = "none"
aks_system_pool_name                = "agentpool"
aks_system_pool_vm_size             = "Standard_D4s_v3"
aks_system_pool_enable_auto_scaling = false
aks_system_pool_node_count          = 2
container_registries = {
  acrwlp = {
    resource_group = "rg-wlp-shared-services"
  }
}
tags = {
  "Application Name"  = "DR Setup",
  "Application Owner" = "Nihil Babu",
  "ENV"               = "DR",
  "RITM"              = "RITM0012345"
}
########## k8s_workloads ######################
kubecost_ip = "10.233.128.34"