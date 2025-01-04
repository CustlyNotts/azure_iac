subscription_id     = <subscription_id>
resource_group                 = "rg-creg-dev"
virtual_network                = "vnet-creg-nonprod"
virtual_network_resource_group = "rg-creg-infra-nonprod"
subnet                         = "snet-akscreg"
cluster_name                   = "aks-creg-dev"
kubernetes_version             = "1.26.6"
aks_network_policy             = "none"
aks_system_pool_name           = "agentpool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 15
aks_additional_node_pools = {
  cregdev = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}

tags = {
  "Application Name"  = "aks",
  "Application Owner" = "Rohit",
  "ENV"               = "DEV"
}

########## k8s_workloads ######################
#kubecost_ip = "172.16.32.76"