subscription_id     = <subscription_id>
resource_group_name     = "mc_rg-cnspreprod_aks-cnspre-prod_uksouth"
resource_group          = "mc_rg-cnspreprod_aks-cnspre-prod_uksouth"
name                    = "kubernetes-a4aec417e6eea4c28a55b3a179432416"
idle_timeout_in_minutes = 4
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DEV",
  "RITM" : "INC0118660",
  "k8s-azure-cluster-name" : "kubernetes",
  "k8s-azure-service" : "default/mysql-service",
  "scheduler" : "off=(M-F,23);on=(M-F,9);tz=Asia/Dubai"
}
