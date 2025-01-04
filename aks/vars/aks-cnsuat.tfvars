subscription_id     = <subscription_id>
resource_group                 = "rg-cnsuat"
virtual_network                = "vnet-cns-nonprod"
virtual_network_resource_group = "rg-cns-infra-nonprod"
subnet                         = "snet-cnsuat"
cluster_name                   = "aks-cnsuat"
kubernetes_version             = "1.29.5"
aks_network_policy             = "overlay"
aks_system_pool_name           = "systempool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cnsuat = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  cargoesuat = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }

}

tags = {
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV",
  "RITM" : "RITM0109463"
}
########## k8s_workloads ######################
#kubecost_ip = "172.22.192.7"