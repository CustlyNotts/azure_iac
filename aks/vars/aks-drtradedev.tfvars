subscription_id     = <subscription_id>
resource_group                 = "rg-drtradedev"
virtual_network                = "vnet-drtradedev"
virtual_network_resource_group = "rg-drtradedev"
subnet                         = "snet-drtradedev"
cluster_name                   = "aks-drtradedev"
cluster_dns_prefix             = "drtrade-dev" #TD
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_B4ms"
aks_system_pool_min_count      = 5
aks_system_pool_max_pods       = 46
tags = {
  "Application Name" : "AKS DRT",
  "Application Owner" : "Daniel Stuart",
  "RITM" : "RITM0027326",
  "ENV" : "DEV"
}

########## k8s_workloads ######################
kubecost_ip = "10.222.201.155"