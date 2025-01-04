subscription_id     = <subscription_id>
resource_group                 = "rg-core-stag"
virtual_network                = "vnet-core-stg"
virtual_network_resource_group = "rg-core-stag"
subnet                         = "snet-core-stg"
cluster_name                   = "aks-core-stag"
cluster_dns_prefix             = "corestg"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_max_count      = 20
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "CORE stag",
  "Application Owner" : "Daniel Stuart / pradeesh raju",
  "ENV" : "STAGING",
  "RITM" : "000000"
}
########## k8s_workloads ######################
kubecost_ip = "10.222.240.237"