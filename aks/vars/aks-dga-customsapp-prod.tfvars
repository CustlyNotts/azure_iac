subscription_id     = <subscription_id>
resource_group                 = "rg-dga-customsapp-prod"
virtual_network                = "vnet-dga-customsapp-eastus-prod"
virtual_network_resource_group = "rg-dga-customsapp-prod"
subnet                         = "snet-dga-customsapp-prod-aks-eastus"
cluster_name                   = "aks-dga-customsapp-prod"
cluster_dns_prefix             = "dga-prod"
kubernetes_version             = "1.26.6"
rbac_enabled                   = false
aks_network_policy             = "none"
aks_system_pool_name           = "prodpool"
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_min_count      = 4
aks_system_pool_zones          = []
tags = {
  "Application Name" : "DGA",
  "Application Owner" : "Dinesh",
  "RITM" : "RITM000012",
  "ENV" : "PROD",
  "HA_disabled" : "true"
}

########## k8s_workloads ######################
kubecost_ip = "10.233.48.67"