echo "
subscription_id = \"$subscription_id\"
aks_workloads_enabled = $aks_workloads_enabled
kubecost_version = \"$kubecost_version\"
kubecost_ip = \"$kubecost_ip\"
kubecost_master = $kubecost_master
newrelic_enabled = $newrelic_enabled
nginx_ingress_enabled = $nginx_ingress_enabled
resource_group = \"$resource_group\"
cluster_name = \"$cluster_name\"
" > ./aks_workloads/vars/$cluster_name.tfvars