subscription_id     = <subscription_id>
resource_group                 = "rg-dga-customsapp-preprod"
virtual_network                = "vnet-dga-customsapp-eastus"
virtual_network_resource_group = "rg-dga-customsapp-preprod"
subnet                         = "snet-dga-customsapp-preprod-aks-eastus"
cluster_name                   = "aks-dga-customsapp-preprod"
cluster_dns_prefix             = "dga-preprod"
kubernetes_version             = "1.26.6"
rbac_enabled                   = false
aks_network_policy             = "none"
aks_system_pool_name           = "dgapool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 5
tags = {
  "Application Name" : "aks",
  "Application Owner" : "shaloof",
  "ENV" : "PREPROD",
  "ritm" : "ritm1234"
}

########## k8s_workloads ######################
kubecost_ip = "10.233.16.34"