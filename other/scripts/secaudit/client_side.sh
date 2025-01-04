#UAE
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for resource_group in $(az network route-table list --subscription $i --query "[?contains(location, 'uae')].resourceGroup" -o tsv)
do
for route_table in $(az network route-table list --subscription $i --resource-group $resource_group --query "[].name" -o tsv)
do
#route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA']  | [? contains(addressPrefix,'10.254.7.0/24')].name" -o tsv)
route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA' && contains(to_string(addressPrefix),'10.254.7.0/24')].name" -o tsv)
if [ -n "$route_name" ]; then
    az network route-table route delete --subscription $i --resource-group $resource_group --route-table-name $route_table -n $route_name
else
    echo "route_name is empty"
fi
az network route-table route create --subscription $i -g $resource_group --route-table-name $route_table -n Route_UAE_SEC_DLP_ME_VA --next-hop-type VirtualAppliance --address-prefix 10.254.7.0/24 --next-hop-ip-address 10.254.15.20
done
done
done

##AMR 
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for resource_group in $(az network route-table list --subscription $i --query "[?contains(location, 'canada' || 'us')].resourceGroup" -o tsv)
do
for route_table in $(az network route-table list --subscription $i --resource-group $resource_group --query "[].name" -o tsv)
do
#route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA']  | [? contains(addressPrefix,'10.254.7.0/24')].name" -o tsv)
route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA' && contains(to_string(addressPrefix),'10.254.7.0/24')].name" -o tsv)
if [ -n "$route_name" ]; then
    az network route-table route delete --subscription $i --resource-group $resource_group --route-table-name $route_table -n $route_name
else
    echo "route_name is empty"
fi
az network route-table route create --subscription $i -g $resource_group --route-table-name $route_table -n Route_UAE_SEC_DLP_ME_VA --next-hop-type VirtualAppliance --address-prefix 10.254.7.0/24 --next-hop-ip-address 10.200.0.116
done
done
done

##APAC
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for resource_group in $(az network route-table list --subscription $i --query "[?contains(location, 'asia' || 'india' || 'korea')].resourceGroup" -o tsv)
do
for route_table in $(az network route-table list --subscription $i --resource-group $resource_group --query "[].name" -o tsv)
do
#route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA']  | [? contains(addressPrefix,'10.254.7.0/24')].name" -o tsv)
route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA' && contains(to_string(addressPrefix),'10.254.7.0/24')].name" -o tsv)
if [ -n "$route_name" ]; then
    az network route-table route delete --subscription $i --resource-group $resource_group --route-table-name $route_table -n $route_name
else
    echo "route_name is empty"
fi
az network route-table route create --subscription $i -g $resource_group --route-table-name $route_table -n Route_UAE_SEC_DLP_ME_VA --next-hop-type VirtualAppliance --address-prefix 10.254.7.0/24 --next-hop-ip-address 10.201.0.116
done
done
done

##EUR
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for resource_group in $(az network route-table list --subscription $i --query "[?contains(location, 'france' || 'europe' || 'uk')].resourceGroup" -o tsv)
do
for route_table in $(az network route-table list --subscription $i --resource-group $resource_group --query "[].name" -o tsv)
do
#route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA']  | [? contains(addressPrefix,'10.254.7.0/24')].name" -o tsv)
route_name=$(az network route-table route list --subscription $i --resource-group $resource_group --route-table-name $route_table --query "[?name!='Route_UAE_SEC_DLP_ME_VA' && contains(to_string(addressPrefix),'10.254.7.0/24')].name" -o tsv)
if [ -n "$route_name" ]; then
    az network route-table route delete --subscription $i --resource-group $resource_group --route-table-name $route_table -n $route_name
else
    echo "route_name is empty"
fi
az network route-table route create --subscription $i -g $resource_group --route-table-name $route_table -n Route_UAE_SEC_DLP_ME_VA --next-hop-type VirtualAppliance --address-prefix 10.254.7.0/24 --next-hop-ip-address 10.202.0.116
done
done
done