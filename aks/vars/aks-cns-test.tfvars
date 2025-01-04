subscription_id     = <subscription_id>
resource_group                    = "rg-cnstest"
virtual_network                   = "CNSNetwork"
virtual_network_resource_group    = "cnsnw"
subnet                            = "Test"
cluster_name                      = "aks-cns-test"
cluster_automatic_channel_upgrade = "patch"
kubernetes_version                = "1.27.9"
aks_network_policy                = "none"
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
  }
  cnstestpool = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "TESTING"
}

########## k8s_workloads ######################
kubecost_ip = "172.22.1.12"