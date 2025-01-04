while read line; do
    az account set --subscription $line
    for resource_group in $(az network route-table list --subscription $line --query "[].resourceGroup" -o tsv); do
        for route_table_amr in $(az network route-table list --subscription $line --resource-group $resource_group --query "[?contains(location, 'canada' || 'us')].name" -o tsv); do
            echo "az network route-table route create --subscription $line -g $resource_group --route-table-name $route_table_amr -n "Route_SEC_CheckPoint_EDR" --next-hop-type VirtualAppliance --address-prefix 10.254.4.4/32 --next-hop-ip-address 10.200.0.116"
        done
        for route_table_apac in $(az network route-table list --subscription $line --resource-group $resource_group --query "[?contains(location, 'asia' || 'india' || 'korea')].name" -o tsv); do
            echo "az network route-table route create --subscription $line -g $resource_group --route-table-name $route_table_apac -n "Route_SEC_CheckPoint_EDR" --next-hop-type VirtualAppliance --address-prefix 10.254.4.4/32 --next-hop-ip-address 10.201.0.116"
        done
        for route_table_eur in $(az network route-table list --subscription $line --resource-group $resource_group --query "[?contains(location, 'france' || 'europe' || 'uk')].name" -o tsv); do
            echo "az network route-table route create --subscription $line -g $resource_group --route-table-name $route_table_eur -n "Route_SEC_CheckPoint_EDR" --next-hop-type VirtualAppliance --address-prefix 10.254.4.4/32 --next-hop-ip-address 10.202.0.116"
        done
        for route_table_uae in $(az network route-table list --subscription $line --resource-group $resource_group --query "[?contains(location, 'uae')].name" -o tsv); do
            echo "az network route-table route create --subscription $line -g $resource_group --route-table-name $route_table_uae -n "Route_SEC_CheckPoint_EDR" --next-hop-type VirtualAppliance --address-prefix 10.254.4.4/32 --next-hop-ip-address 10.254.15.20"
        done
    done  | sort -u
done <subscriptions.list
