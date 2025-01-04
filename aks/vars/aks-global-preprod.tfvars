subscription_id     = <subscription_id>
resource_group                    = "rg-global-preprod"
virtual_network                   = "vnet-global-nonprod"
virtual_network_resource_group    = "rg-global-infra-nonprod"
subnet                            = "snet-global-preprod-blue"
cluster_name                      = "aks-global-preprod"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
kubernetes_version                = "1.26.6"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_additional_node_pools = {
  glpreprod = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_max_count    = 5
    aks_user_pool_max_pods     = 50
    #aks_user_pool_node_labels = {
    #  app = "infra" 
    #}
  }
}
tags = {
  "Application Name" : "CCS Global"
  "Application Owner" : "Daniel Stuart"
  "ENV" : "preprod"
}
########## k8s_workloads ######################
kubecost_ip = "10.180.15.200"
