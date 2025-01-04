subscription_id     = <subscription_id>
resource_group                 = "rg-dga-customsapp-dr"
virtual_network                = "vnet-dga-customsapp-westus-dr"
virtual_network_resource_group = "rg-dga-customsapp-dr"
subnet                         = "snet-dga-customsapp-dr-aks-westus"
cluster_name                   = "aks-dga-customsapp-dr"
kubernetes_version             = "1.26.6"
admin_username_enabled         = true
aks_admin_username             = "azureuser"
aks_ssh_key                    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCt2XfBcpucbropOjkLD63btKqdHMig7QBjVFRKY2R0Yc9/JfBm+TCh2Kea6EG9Fb9kFEfQUGURf4zYKtvC1NFf60TA5//zIbmhpDaj8NnqwIGJTSlITOqhWf6CO7MAAXP8IGNWE1+qhdauuuevIw13xEzwCggkhb0DR7LIMHggMV9A2h5/H8atNm0JDx+YUdjzs9Thv7DFMWkK3R1TB70kTZh1eIQFD9N8nxXH/XkcRmnElgoB0xh7HAakncb9VKsz81eae6M1CWR4L79H6EXMav87w0i55izwdi3f+Gqcg6E+oPaegpPfMsuC79RfI3Rg8xvxHud+NMkuILzzUK6C5e5vfM5TfdQ2pDYqlUb6M9iEsAVK7pC9/xmjKudbKQ3WyQ1OPDdyELxYWAbN1uUr6M0kXmSe77McGpcrqNyCYDWc/MyHnIm99BDgXNc0n1A1avNaWC7RmbqrMDGByfGmM1brAz/9j50l4opuywcD2cL5dtwtgsTAxtOfSurcHLbDUM5BbZ425tZolRF0aqWXf5zOa59bNzZ4cM6c7kXjowWZXSqKuUGAdeeMyLFx8qawnV3hzSQDzEEpPYPU4qDNKRD++uPuUu3Amh/6hnBKOpKw+0Niy32i3UoImhEsCd2FBvcKMbVkdmstG0eDk51nP/fxgLv4tIVouKYVbPsFpw== tibin@zycon.in\n"
aks_network_policy             = "none"
aks_system_pool_name           = "nodepool1"
aks_system_pool_vm_size        = "standard_d16s_v3"
aks_system_pool_os_disk_type   = "Ephemeral"
aks_system_pool_max_count      = 3
tags = {
  "Application Name" : "DGA customs ",
  "Application Owner" : "hussain.hashimi@dpworld.com",
  "ENV" : "DR",
  "RITM" : "RITM000012"
}

########## k8s_workloads ######################
kubecost_ip = "10.233.64.34"