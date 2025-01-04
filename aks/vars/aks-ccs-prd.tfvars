subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescustoms-prod"
virtual_network                = "vnet-cargoescustoms-prod"
virtual_network_resource_group = "rg-cargoescustoms-infra-prod"
subnet                         = "snet-aksnode-cargoes-customs-prod"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-cargoes-customs-prod"
cluster_name                   = "aks-ccs-prd"
kubernetes_version             = "1.27.1"
cluster_dns_prefix             = "aks-ccs-pr-rg-cargoescustom-3b3309"
aks_network_policy             = "none"
admin_username_enabled         = true
aks_admin_username             = "azureuser"
aks_ssh_key                    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLpV1BXNIOatWUFkgjoV5s/NKo+LgJbgwbygeYZOBhaekxjvrD0nUgfJfjwnS36eLHhhmiu8BAJMLkslfPUNtQ+NgZn5POTD6jF3+cxQX2/Wyw+ytyHR9rA/v20SYMSMxTYXQIQt8jEKbbFo1MNU8GENKEA1EgCWiSkPfOLi/5PxhNV/sKQp831D7l+bpfViFtk8rASj07oiRB/dkXft7yp86mF59H5xkrpHTSKmXsXe8AxAxU+fQ5vkeIug1lHVwrdgZG8Q+YkPpboFsOVOCVHBHG01g/oZ0GAECpN+XZYY4XrMHWxNSFdy5ieRD6ngb87pS9g30ftMQitueIuYwz"
aad_kubernetes_rbac            = true
aad_azure_rbac                 = true
aks_system_pool_name           = "nodepool1"
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_max_pods       = 250
aks_system_pool_zones          = []
aks_additional_node_pools = {
  cargoespool = {
    aks_user_pool_vm_size  = "Standard_D4s_v3"
    aks_user_pool_max_pods = 250
    aks_user_pool_zones    = []
  }
  cargoespool1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 100
  }
}
tags = {
  "Application Name" : "",
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "PROD"
}
########## k8s_workloads ######################
kubecost_ip = "10.146.40.11"