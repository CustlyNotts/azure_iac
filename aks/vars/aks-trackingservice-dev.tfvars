subscription_id     = <subscription_id>
resource_group                 = "rg-trackingservice-dev"
virtual_network                = "Vnet-trackingservice-dev"
virtual_network_resource_group = "rg-trackingservice-dev-infra"
subnet                         = "snet-aksnode-dev"
pod_subnet_enabled             = true
pod_subnet                     = "snet-akspod-dev"
cluster_name                   = "aks-trackingservice-dev"
cluster_dns_prefix             = "aks-trackingservice-dev"
kubernetes_version             = "1.25.5"
aks_network_policy             = "none"
aks_system_pool_vm_size        = "Standard_D4s_v3"
tags = {
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay Li/ Bittu Lal",
  "ENV" : "DEV"
}

########## k8s_workloads ######################
kubecost_ip = "10.143.40.6"