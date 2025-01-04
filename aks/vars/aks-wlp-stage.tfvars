subscription_id     = <subscription_id>
resource_group                    = "rg-wlp-stage"
virtual_network                   = "vnet-wlp-stage-uaenorth"
virtual_network_resource_group    = "rg-wlp-stage"
subnet                            = "snet-wlp-stage-aks-uaenorth"
cluster_name                      = "aks-wlp-stage"
cluster_dns_prefix                = "wlp-stage"
kubernetes_version                = "1.25.5"
aks_network_policy                = "none"
key_vault_secrets_provider        = true
key_vault_secret_rotation_enabled = true
rbac_enabled                      = false
aks_system_pool_name              = "poolstage1"
aks_system_pool_vm_size           = "Standard_D4s_v3"
aks_system_pool_max_count         = 4
tags = {
  "Application Name"  = "WLP stage",
  "Application Owner" = "hussain.hashimi@dpworld.com",
  "ENV"               = "STAGING",
  "RITM"              = "RITM00123"
}
########## k8s_workloads ######################
kubecost_ip = "10.233.96.7"