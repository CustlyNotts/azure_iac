subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescustoms-svc-uat"
virtual_network                = "vnet-cargoescustoms-svc-uat"
virtual_network_resource_group = "rg-cargoescustoms-svc-infra-uat"
subnet                         = "snet-aks-cargoescustoms-svc-uat"
cluster_name                   = "aks-ccssvc-uat"
kubernetes_version             = "1.27.1"
aks_network_policy             = "none"
aad_kubernetes_rbac            = true
aad_azure_rbac                 = true
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_max_pods       = 100
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size  = "Standard_D4s_v3"
    aks_user_pool_max_pods = 100
  }
  cargoespool1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 100
  }
}
dns_vnet_link = {
  pl-ccssvc-uat-aks = {
    virtual_network_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod"
  }
}
tags = {
  "Application Name" : "CCS SVC",
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "UAT",
  "RITM" : "RITM0052909"
}
########## k8s_workloads ######################
kubecost_ip = "10.146.96.204"