subscription_id     = <subscription_id>
resource_group                 = "rg-infrateam"
virtual_network                = "vnet-infrateam"
virtual_network_resource_group = "rg-infrateam"
subnet                         = "snet-aks-infra"
cluster_name                   = "aks-terraform-test"
kubernetes_version             = "1.25.5"
tags = {
  "Application Name" = "Infra team test",
  "ENV"              = "TESTING",
  "Creator"          = "Pavlo Azadmin"
}
########## k8s_workloads ######################
# aks_workloads_enabled = false
kubecost_ip = "10.139.0.37"