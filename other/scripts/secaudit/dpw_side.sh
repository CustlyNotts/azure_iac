#AMR
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for rg in $(az network vnet list --subscription $i --query "[?contains(location, 'canada' || 'us')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $rg --query "[].name" -o tsv)
do
for subnet_name in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[].name" -o tsv)
do
for subnet_address in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[?name=='$subnet_name'].addressPrefix" -o tsv)
do  
#route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name AMR-Route-DPWHO-Security --query "[?name=='Route_AMR_$subnet_name'].name" -o tsv)
#if [ ! "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name AMR-Route-DPWHO-Security -n Route_AMR_$vnet_name-$subnet_name --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.200.0.116
#else
#  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name AMR-Route-DPWHO-Security -n Route_AMR_$subnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.200.0.116
#fi
done
done
done
done
done

#APAC
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for rg in $(az network vnet list --subscription $i --query "[?contains(location, 'asia' || 'india' || 'korea')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $rg --query "[].name" -o tsv)
do
for subnet_name in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[].name" -o tsv)
do
for subnet_address in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[?name=='$subnet_name'].addressPrefix" -o tsv)
do
#route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name APAC-Route-DPWHO-Security --query "[?name=='Route_APAC_$subnet_name'].name" -o tsv)
#if [ ! "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name APAC-Route-DPWHO-Security -n Route_APAC_$vnet_name-$subnet_name --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.201.0.116
#else
#  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name APAC-Route-DPWHO-Security -n Route_APAC_$subnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.201.0.116
#fi
done
done
done
done
done

#EUR
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for rg in $(az network vnet list --subscription $i --query "[?contains(location, 'france' || 'europe' || 'uk')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $rg --query "[].name" -o tsv)
do
for subnet_name in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[].name" -o tsv)
 do
for subnet_address in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[?name=='$subnet_name'].addressPrefix" -o tsv)
do
#route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name EUR-Route-DPWHO-Security --query "[?name=='Route_EUR_$subnet_name'].name" -o tsv)
#if [ ! "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name EUR-Route-DPWHO-Security -n Route_EUR_$vnet_name-$subnet_name --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.202.0.116
#else
#  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name EUR-Route-DPWHO-Security -n Route_EUR_$subnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.202.0.116  
#fi
done
done
done
done
done

###UAE
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for rg in $(az network vnet list --subscription $i --query "[?contains(location, 'uae')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $rg --query "[].name" -o tsv)
do
for subnet_name in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[].name" -o tsv)
do
for subnet_address in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[?name=='$subnet_name'].addressPrefix" -o tsv)
do
#route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name UAE-Route-DPWHO-Security --query "[?name=='Route_UAE_$subnet_name'].name" -o tsv)
#if [ ! "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name UAE-Route-DPWHO-Security -n Route_UAE_$vnet_name-$subnet_name --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.254.15.20
#else
#  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name UAE-Route-DPWHO-Security -n Route_UAE_$subnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $subnet_address --next-hop-ip-address 10.254.15.20
#fi
done
done
done
done
done