subscription_id     = <subscription_id>
resource_group                 = "rg-turkeyprod"
virtual_network                = "vnet-turkeyprod"
virtual_network_resource_group = "rg-turkeyprod"
subnet                         = "snet-turkeyprod"
cluster_name                   = "aks-turkeyprod"
kubernetes_version             = "1.26.6"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_additional_node_pools = {
  turkeyprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 3
  }
}
dns_vnet_link = {
  vnet-build = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name" : "Turkey PROD AKS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD",
  "location" : "uaenorth"
}

########## k8s_workloads ######################
kubecost_ip = ""