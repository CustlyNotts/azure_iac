subscription_id     = <subscription_id>
resource_group                 = "rg-cns-dev"
virtual_network                = "vnet-cns-nonprod"
virtual_network_resource_group = "rg-cns-infra-nonprod"
subnet                         = "snet-cnsdev"
cluster_name                   = "aks-ccscns-dev"
kubernetes_version             = "1.29.5"
aks_network_policy             = "overlay"
aks_system_pool_name           = "systempool"
aks_system_pool_vm_size        = "Standard_E4ads_v5"
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cnsdev1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  cargoespool1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
  }

}

tags = {
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV",
  "RITM" : "RITM0104479"
}
########## k8s_workloads ######################
#kubecost_ip = "172.22.192.7"