subscription_id     = <subscription_id>
resource_group                 = "rg-core-demo"
virtual_network                = "vnet-core-demo"
virtual_network_resource_group = "rg-core-demo"
subnet                         = "snet-core-demo"
cluster_name                   = "aks-core-demo"
cluster_dns_prefix             = "coredemo"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_B4ms"
aks_system_pool_max_count      = 30
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "CORE demo",
  "Application Owner" : "Daniel Stuart / pradeesh raju",
  "RITM" : "RITM12345",
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.210.81.99"