subscription_id     = <subscription_id>
resource_group                 = "rg-cnsprod"
virtual_network                = "vnet-cns-prod"
virtual_network_resource_group = "rg-cns-infra-prod"
subnet                         = "snet-cnsprod"
cluster_name                   = "aks-cnsprod"
kubernetes_version             = "1.29.5"
aks_network_policy             = "overlay"
aks_system_pool_name           = "systempool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_pods     = 50
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  cargoesprod = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
  cnsprodpool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }

}

tags = {
  "Application Name" : "CCS-CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD",
  "RITM" : "RITM0119612"
}
########## k8s_workloads ######################
#kubecost_ip = "172.22.192.7"