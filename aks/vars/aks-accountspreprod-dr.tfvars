subscription_id     = <subscription_id>
resource_group                 = "rg-accounts-dr"
virtual_network                = "vnet-accounts-dr"
virtual_network_resource_group = "rg-accounts-infra-dr"
subnet                         = "snet-aksaccounts-preprod-dr"
cluster_name                   = "aks-accounts-preprod-dr"
cluster_dns_prefix             = "aks-accounts-preprod-dr"
kubernetes_version             = "1.27.9"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 3

tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR",
  "RITM" : "RITM0096887"
}

########## k8s_workloads ######################
#kubecost_ip = "10.214.8.11"