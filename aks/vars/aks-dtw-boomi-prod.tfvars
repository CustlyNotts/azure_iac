subscription_id     = <subscription_id>
resource_group                 = "rg-mawani-boomi-prod"
virtual_network                = "vnet-mawani-boomi-prod"
virtual_network_resource_group = "rg-mawani-boomi-prod"
subnet                         = "snet-mawani-boomi-prod"
cluster_name                   = "aks-dtw-boomi-prod"
kubernetes_version             = "1.23.8"
aks_network_policy             = "none"
aad_kubernetes_rbac            = true
aad_kubernetes_rbac_admin_groups = [
  "41a0127b-fa36-4f01-982e-046291c05e48",
  "43ace4f6-ae55-4ea9-8aff-b0b994d893d4",
  "ce64884e-156c-40c7-9337-0e096bf44d74",
  "71ba8324-97a2-49db-959b-287a3baec92d",
  "ea68bedc-3e98-41c5-9358-1b6edb06e363"
]
aks_system_pool_zones        = []
aks_system_pool_vm_size      = "Standard_D8s_v3"
aks_system_pool_os_disk_type = "Ephemeral"
aks_system_pool_min_count    = 3
aks_system_pool_max_count    = 5
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_zones        = []
  }
}

dns_vnet_link = {
  wvdboomi = {
    virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-boomi-nonprd/providers/Microsoft.Network/virtualNetworks/vnet-boomi-nonprd"
  }
}

tags = {
  "Application Name"  = "Boomi",
  "Application Owner" = "Daniel",
  "ENV"               = "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.152.16.154"
