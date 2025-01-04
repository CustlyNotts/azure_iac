subscription_id     = <subscription_id>
resource_group                 = "rg-accountsproduction"
virtual_network                = "Vnet-DTWorld"
virtual_network_resource_group = "Rg-Vnet"
subnet                         = "snet-aksnode-accounts-prod"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-accounts-prod"
cluster_name                   = "aks-accounts-prod"
cluster_dns_prefix             = "aks-accounts-prod"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_min_count      = 3
aks_system_pool_max_count      = 5
aks_system_pool_zones          = []
aks_additional_node_pools = {
  accountsprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 20
    aks_user_pool_zones        = []
  }
}
dns_vnet_link = {
  vmbuild = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "Mawani",
  "Application Owner" : "Daniel Stuart / pradeesh raju",
  "ENV" : "PROD",
  "RITM" : "RITM0037158"
}
########## k8s_workloads ######################
kubecost_ip = "10.156.8.8"