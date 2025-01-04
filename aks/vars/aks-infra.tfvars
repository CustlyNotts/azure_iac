subscription_id     = <subscription_id>
resource_group                    = "rg-infrateam"
virtual_network                   = "vnet-infrateam"
virtual_network_resource_group    = "rg-infrateam"
subnet                            = "snet-aks-infra"
cluster_name                      = "aks-infra"
kubernetes_version                = "1.27.9"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "agentpooltmp"
aks_system_pool_zones             = []
aks_system_pool_max_pods          = 100
aks_network_policy                = "none"
#aad_kubernetes_rbac               = true
aad_azure_rbac                    = true
oidc_issuer_enabled               = true
workload_identity_enabled         = true
aks_system_pool_only_critical_addons_enabled = true
aks_additional_node_pools = {
  devopspool = {
    aks_user_pool_vm_size      = "Standard_B4ms"
    aks_user_pool_os_disk_type = "Managed"
    aks_user_pool_max_count    = 1
    aks_user_pool_max_pods     = 50
    aks_user_pool_zones        = []
    aks_user_pool_enable_auto_scaling = true
    aks_user_pool_node_taints  = ["app=devops:NoSchedule"]
    aks_user_pool_node_labels = {
      team = "devops"
    }
  }
  infrapool = {
    aks_user_pool_vm_size      = "Standard_B4ms"
    aks_user_pool_os_disk_type = "Managed"
    aks_user_pool_max_count    = 0
    aks_user_pool_min_count    = 0
    aks_user_pool_max_pods     = 30
    aks_user_pool_enable_auto_scaling = false
    aks_user_pool_zones        = []
    aks_user_pool_node_taints  = ["team=infra:NoSchedule"]
    aks_user_pool_node_labels = {
      team = "infra"
    }
  }
}
tags = {
  "Application Name"  = "Admin WVD",
  "ENV"               = "PROD",
  "Application Owner" = "Kuldeep.azadmin",
  "Creator"           = "Pavlo Azadmin"
}
########## k8s_workloads ######################
aks_workloads_enabled = false
# kubecost_ip     = "10.139.0.36"
# kubecost_master = true
