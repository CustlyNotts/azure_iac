subscription_id     = <subscription_id>
resource_group                               = "rg-oee-mearo-prod"
virtual_network                              = "Vnet-MeaRo-Prod"
virtual_network_resource_group               = "Rg-MeaRo-Infra-Prod"
subnet                                       = "snet-aks-oee-mearo-prod"
cluster_name                                 = "aks-oee-mearo-Prod"
cluster_dns_prefix                           = "aks-oee-me-rg-oee-mearo-pro-f3c84e"
kubernetes_version                           = "1.24.6"
aks_system_pool_name                         = "systempool"
aks_network_policy                           = "none"
admin_username_enabled                       = true
aks_admin_username                           = "azureuser"
aks_ssh_key                                  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLpV1BXNIOatWUFkgjoV5s/NKo+LgJbgwbygeYZOBhaekxjvrD0nUgfJfjwnS36eLHhhmiu8BAJMLkslfPUNtQ+NgZn5POTD6jF3+cxQX2/Wyw+ytyHR9rA/v20SYMSMxTYXQIQt8jEKbbFo1MNU8GENKEA1EgCWiSkPfOLi/5PxhNV/sKQp831D7l+bpfViFtk8rASj07oiRB/dkXft7yp86mF59H5xkrpHTSKmXsXe8AxAxU+fQ5vkeIug1lHVwrdgZG8Q+YkPpboFsOVOCVHBHG01g/oZ0GAECpN+XZYY4XrMHWxNSFdy5ieRD6ngb87pS9g30ftMQitueIuYwz"
aad_azure_rbac                               = true
aks_system_pool_zones                        = []
aks_system_pool_vm_size                      = "Standard_D2s_v3"
aks_system_pool_max_count                    = 4
aks_system_pool_max_pods                     = 30
aks_system_pool_only_critical_addons_enabled = true
aks_additional_node_pools = {
  userpool = {
    aks_user_pool_vm_size  = "Standard_D4s_v3"
    aks_user_pool_max_pods = 50
    aks_user_pool_zones    = []
  }
}
tags = {
  "ENV" = "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.141.6.83"
