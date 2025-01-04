subscription_id     = <subscription_id>
resource_group                 = "rg-bt-uat"
virtual_network                = "vnet-btnwhub"
virtual_network_resource_group = "rg-btnwhub"
subnet                         = "snet-btstaging"
cluster_name                   = "aks-bt-uat-temp"
kubernetes_version             = "1.25.6"
aks_network_policy             = "none"
aks_system_pool_name           = "systempool"
aks_system_pool_vm_size        = "Standard_D4s_v3"
aks_system_pool_max_count      = 15
aks_system_pool_zones          = ["1", "2", "3"]
aks_additional_node_pools = {
  btuattmp = {
    aks_user_pool_vm_size      = "Standard_D8s_v3"
    aks_user_pool_os_disk_type = "Ephemeral"
  }
}
/* dns_vnet_link = {
  checkpoint = {
    virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub"
  }
} */

tags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae",
  "ENV" : "DEV",
  "RITM" : "RITM0081943"
}
########## k8s_workloads ######################
#kubecost_ip = "10.223.8.217"