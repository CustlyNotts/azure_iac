subscription_id     = <subscription_id>
resource_group                 = "rg-wlp-prod"
virtual_network                = "vnet-wlp-prod-uaenorth"
virtual_network_resource_group = "rg-wlp-prod"
subnet                         = "snet-wlp-prod-aks-uaenorth"
cluster_name                   = "aks-wlp-prod"
cluster_dns_prefix             = "wlp-prod"
kubernetes_version             = "1.25.5"
rbac_enabled                   = false
aks_network_policy             = "none"
aks_system_pool_name           = "poolprod1"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 2
aks_system_pool_max_count      = 5
aks_system_pool_zones          = []
container_registries = {
  acrwlp = {
    resource_group = "rg-wlp-shared-services"
  }
}
tags = {
  "Application Name" : "wlp Prod",
  "Application Owner" : "hussain.hashimi@dpworld.com",
  "RITM" : "RITM00123",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.233.112.36"