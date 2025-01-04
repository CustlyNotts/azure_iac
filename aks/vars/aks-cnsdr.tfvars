subscription_id     = <subscription_id>
resource_group                 = "rg-cns-dr"
virtual_network                = "vnet-cns-dr"
virtual_network_resource_group = "rg-cns-infra-dr"
subnet                         = "snet-cnsprod-dr"
cluster_name                   = "aks-cnsdr"
kubernetes_version             = "1.29.5"
aks_network_policy             = "overlay"
rbac_enabled                   = "false"
aks_system_pool_name           = "systempool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
#aks_system_pool_zones          = [""]
aks_additional_node_pools = {
  cnsdr = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  cargoesdr = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  
}

tags = {
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR",
  "RITM" : "RITM0100000"
}
########## k8s_workloads ######################
#kubecost_ip = "172.22.192.7"