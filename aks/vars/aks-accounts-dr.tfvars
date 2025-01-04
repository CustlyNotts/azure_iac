subscription_id     = <subscription_id>
resource_group                 = "rg-accounts-dr"
virtual_network                = "vnet-accounts-dr"
virtual_network_resource_group = "rg-accounts-infra-dr"
subnet                         = "snet-aksnode-accounts-dr"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-accounts-dr"
cluster_name                   = "aks-accounts-dr"
cluster_dns_prefix             = "aks-accounts-dr"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 3
aks_additional_node_pools = {
  accountsdr = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 15
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "DR",
  "RITM" : "RITM0035257"
}

########## k8s_workloads ######################
kubecost_ip = "10.214.8.11"