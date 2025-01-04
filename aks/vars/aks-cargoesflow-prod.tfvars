subscription_id     = <subscription_id>
resource_group                    = "rg-cargoesflow-prod"
virtual_network                   = "Vnet-cargoesflow-prod"
virtual_network_resource_group    = "rg-cargoesflowprod-infra"
subnet                            = "snet-aksnode-prod"
pod_subnet_enabled                = true
pod_subnet                        = "snet-akspod-prod"
cluster_name                      = "aks-cargoesflow-prod"
cluster_dns_prefix                = "aks-cargoesflow-prod" #TD
kubernetes_version                = "1.29.4"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_system_pool_name              = "system"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 3
aks_system_pool_min_count         = 2
aks_system_pool_zones             = []
temporary_name_for_rotation       = "flowtmp"
drain_timeout_in_minutes          = "10"
aks_additional_node_pools = {
  system = {
    aks_user_pool_vm_size   = "Standard_D4s_v3"
    aks_user_pool_mode      = "System"
    aks_user_pool_max_count = 3
    aks_user_pool_min_count = 2
    aks_user_pool_zones     = []
  }
}
dns_vnet_link = {
  vnet-sharedapps_prod = {
    virtual_network_id   = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod"
    registration_enabled = true
  }
}
tags = {
  "Application Name" : "Cargoes Flow",
  "Application Owner" : "Mostafa/Nitesh",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.243.40.7"