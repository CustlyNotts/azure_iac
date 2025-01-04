subscription_id     = <subscription_id>
resource_group                   = "rg-accountspreprod"
virtual_network                  = "vnet-accounts-preprod"
virtual_network_resource_group   = "rg-accountspreprod"
subnet                           = "snet-accounts-s1-preprod"
cluster_name                     = "aks-accounts-preprod"
cluster_dns_prefix               = "aks-accounts-preprod"
kubernetes_version               = "1.25.5"
aks_network_policy               = "none"
aad_kubernetes_rbac              = true
aad_kubernetes_rbac_admin_groups = ["b8adb124-02d3-4880-ba85-1c6da72111aa", "b12a34eb-b1cf-4b9f-8e95-48053a728289", "ce64884e-156c-40c7-9337-0e096bf44d74", "43ace4f6-ae55-4ea9-8aff-b0b994d893d4"]
aks_system_pool_name             = "agentpool"
aks_system_pool_vm_size          = "standard_d4s_v3"
aks_system_pool_max_pods         = 50
dns_vnet_link = {
  vmbuild = {
    virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-build/providers/Microsoft.Network/virtualNetworks/vnet-build"
  }
}
tags = {
  "Application Name"  = "Accounts",
  "Application Owner" = "Chinnayya Nalla",
  "ENV"               = "PREPROD"
  "RITM"              = "000000"
}
########## k8s_workloads ######################
kubecost_ip = "10.210.16.252"