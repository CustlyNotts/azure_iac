subscription_id     = <subscription_id>
resource_group                    = "rg-wlp-dev"
virtual_network                   = "vnet-wlp-dev-uaenorth"
virtual_network_resource_group    = "rg-wlp-dev"
subnet                            = "snet-wlp-dev-aks-uaenorth"
cluster_name                      = "aks-wlp-dev"
cluster_dns_prefix                = "wlp-dev"
kubernetes_version                = "1.26.6"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
aks_network_policy                = "none"
rbac_enabled                      = false
aks_system_pool_name              = "pooldev1"
aks_system_pool_vm_size           = "Standard_D4s_v3"
tags = {
  "Application Name"  = "WLP Dev",
  "Application Owner" = "hussain.hashimi@dpworld.com",
  "ENV"               = "DEV",
  "RITM"              = "RITM00123"
}
########## k8s_workloads ######################
kubecost_ip = "10.233.80.64"