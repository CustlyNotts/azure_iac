subscription_id     = <subscription_id>
resource_group                 = "rg-metaverse-nonprod"
virtual_network                = "vnet-metaverse-nonprod"
virtual_network_resource_group = "rg-network-nonprod"
subnet                         = "snet-aksmetaverse-nonprod"
cluster_name                   = "aks-metaverse-nonprod"
cluster_dns_prefix             = "aks-metaverse-nonprod-dns"
kubernetes_version             = "1.26.3"
aks_system_pool_name           = "agentpool"
aks_network_policy             = "none"
aks_system_pool_zones          = []
aks_system_pool_vm_size        = "Standard_E4as_v4"
aks_system_pool_max_count      = 3
aks_system_pool_max_pods       = 50
tags = {
  "Application Name"  = "Metaverse",
  "Application Owner" = "Harsh Jain",
  "Creator"           = "Bastian Joe"
  "ENV"               = "DEV"
}
########## k8s_workloads ######################
kubecost_ip = "10.148.8.20"
