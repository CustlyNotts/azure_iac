subscription_id     = <subscription_id>
resource_group                 = "rg-appliedscience-aks-dev"
virtual_network                = "vnet-appliedscience"
virtual_network_resource_group = "rg-network"
subnet                         = "snet-aks-appliedscience-dev"
cluster_name                   = "aks-appliedscience-dev"
kubernetes_version             = "1.25.5"
tags = {
  "Application Name" : "xxx"
  "Application Owner" : "xxx"
  "ENV" : "DEV"
}
########## k8s_workloads ######################
kubecost_ip = ""