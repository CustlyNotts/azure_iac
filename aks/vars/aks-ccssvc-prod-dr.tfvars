subscription_id     = <subscription_id>
resource_group                 = "rg-cargoescustoms-svc-prod-dr"
virtual_network                = "vnet-cargoescustoms-svc-prod-dr"
virtual_network_resource_group = "rg-cargoescustoms-svc-infra-prod-dr"
subnet                         = "snet-aksnode-cargoescustoms-svc-prd-dr"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-cargoescustoms-svc-prd-dr"
cluster_name                   = "aks-ccssvc-prod-dr"
kubernetes_version             = "1.27.3"
cluster_dns_prefix             = "aks-ccssvc-rg-cargoescustom-3b3309"
aks_network_policy             = "none"
admin_username_enabled         = true
aks_admin_username             = "azureuser"
aks_ssh_key                    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCLg6r6jObqPyKd52FTNQ1WSLsYlAJUd46F1d1QfanjT4hnGvjx52S+9/JVPloCpVNsOW8G61sjCcPQDTJjtT87XY3Hd7RGdqV/XAoTwyKwV1md7x+MvsbmytTzgJwLETnkJhr94Xtz5tSCZvz5modTNa3/LNpr94Ew+pCt3D5GJ4l1fEnEePAJVu5iSrj6EH9W06sD1JF3oTSNnxwFGyz6ALunYPj5yg69R941FclAmfZr3wNfTzmTCgsy5crZ5nu6Z+a8qVW3BRH9Or3k019IsTcV0ffhhOEsvqhj9hbZ+vpMbzxjg8ebgjGUmhdqVpPZgf/H22/779I22ZIummHH"
aad_kubernetes_rbac            = true
aad_azure_rbac                 = true
aks_system_pool_vm_size        = "Standard_D2s_v3"
aks_system_pool_os_disk_type   = "Managed"
aks_system_pool_max_pods       = 250
aks_system_pool_zones          = []
aks_additional_node_pools = {
  cargoespool1 = {
    aks_user_pool_vm_size      = "Standard_E8ds_v5"
    aks_user_pool_os_disk_type = "Ephemeral"
    aks_user_pool_min_count    = 1
    aks_user_pool_max_pods     = 250
  }
}
tags = {
  "Application Name" : "Cargoes Customs",
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "DR"
}
########## k8s_workloads ######################
#kubecost_ip = "10.146.72.7"