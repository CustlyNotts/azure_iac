subscription_id     = <subscription_id>
resource_group                 = "Rg-rostimadev"
virtual_network                = "vnet-aksRostima-dev"
virtual_network_resource_group = "Rg-Vnet"
subnet                         = "snet-aksRostima-dev"
cluster_name                   = "aks-Rostima-dev"
cluster_dns_prefix             = "aks-Rostima-dev"
kubernetes_version             = "1.23.8"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D8s_v3"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_max_pods       = 40
tags = {
  "Application Name" : "Poems Application",
  "Application Owner" : "Moinudeen AliAzad",
  "ENV" : "DEV",
  "RITM" : "RITM0027905"
}
########## k8s_workloads ######################
kubecost_ip = "10.154.8.85"
