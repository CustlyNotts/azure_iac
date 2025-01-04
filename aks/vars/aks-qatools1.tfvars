subscription_id     = <subscription_id>
resource_group                    = "rg-qatools"
virtual_network                   = "Vnet-qatools"
virtual_network_resource_group    = "rg-qatools"
subnet                            = "sub-akscluster"
cluster_name                      = "aks-qatools1"
kubernetes_version                = "1.25.6"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpool"
aks_system_pool_vm_size           = "Standard_B4ms"
aks_additional_node_pools = {
  nodepool2 = {
    aks_user_pool_vm_size   = "Standard_B8ms"
    aks_user_pool_max_count = 5
    aks_user_pool_max_pods  = 30
  }
}
tags = {
  "Application Name"  = "QA Tools"
  "Application Owner" = "Ritesh Singh/Sai Anudeep"
  "ENV"               = "DEV"

}
########## k8s_workloads ######################
kubecost_ip = "10.213.0.93"