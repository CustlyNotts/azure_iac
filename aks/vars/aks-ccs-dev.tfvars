subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescustoms-dev"
virtual_network                = "vnet-cargoescustoms-dev"
virtual_network_resource_group = "rg-cargoescustoms-infra-dev"
subnet                         = "snet-aksnode-cargoes-customs-dev"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-cargoes-customs-dev"
cluster_name                   = "aks-ccs-dev"
cluster_dns_prefix             = "aks-ccs-de-rg-cargoescustom-3b3309"
kubernetes_version             = "1.29.6"
key_vault_secrets_provider     = true
aks_network_policy             = "none"
local_account_disabled         = true
aad_kubernetes_rbac            = true
aad_azure_rbac                 = true
admin_username_enabled         = true
aks_admin_username             = "azureuser"
image_cleaner_interval_hours   = 48
aks_ssh_key                    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLpV1BXNIOatWUFkgjoV5s/NKo+LgJbgwbygeYZOBhaekxjvrD0nUgfJfjwnS36eLHhhmiu8BAJMLkslfPUNtQ+NgZn5POTD6jF3+cxQX2/Wyw+ytyHR9rA/v20SYMSMxTYXQIQt8jEKbbFo1MNU8GENKEA1EgCWiSkPfOLi/5PxhNV/sKQp831D7l+bpfViFtk8rASj07oiRB/dkXft7yp86mF59H5xkrpHTSKmXsXe8AxAxU+fQ5vkeIug1lHVwrdgZG8Q+YkPpboFsOVOCVHBHG01g/oZ0GAECpN+XZYY4XrMHWxNSFdy5ieRD6ngb87pS9g30ftMQitueIuYwz"
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_max_pods       = 250
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 100
  }
  spotpool = { 
    aks_user_pool_vm_size      = "Standard_E8ds_v5" 
    aks_user_pool_os_disk_type = "Managed" 
    aks_user_pool_max_count    = 5 
    aks_user_pool_priority      = "Spot" 
    aks_user_pool_min_count    = 1 
    aks_user_pool_max_pods     = 100
    aks_user_pool_enable_auto_scaling = true 
    aks_user_pool_zones        = [] 
  } 
}
container_registries = {
  cargoes = {
    resource_group = "rg-cargoescustoms-shared"
  }
}
tags = {
  "Application Name" : "Cargoes Customs",
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "DEV",
  "RITM" : "RITM0044607"
}
########## k8s_workloads ######################
kubecost_ip = "10.146.2.10"
