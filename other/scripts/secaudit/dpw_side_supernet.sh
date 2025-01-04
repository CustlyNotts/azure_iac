# #AMR
# for i in $(az account list -o tsv | awk '{print$3}')
# do
# az account set --subscription $i
# for rg in $(az network vnet list --subscription $i --query "[?contains(location, 'canada' || 'us')].resourceGroup" -o tsv)
# do
# for vnet_name in $(az network vnet list --subscription $i -g $rg --query "[].name" -o tsv)
# do
# for subnet_name in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[].name" -o tsv)
# do
# for subnet_address in $(az network vnet subnet list --subscription $i --resource-group $rg --vnet-name $vnet_name --query "[?name=='$subnet_name'].addressPrefix" -o tsv)
# do  
#   echo "$subnet_address" >> amr.list
# done
# done
# done
# done
# done
# python3 supernet.py amr.list > amr_supernet.list
#   while read LINE; do 
#   az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name TEST-Route-DPWHO-Security -n Route_AMR_$RANDOM --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.200.0.116; 
#   done < amr_supernet.list

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
  echo "$subnet_address" >> apac.list
done
done
done
done
done
python3 supernet.py apac.list > apac_supernet.list
  while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name TEST-Route-DPWHO-Security -n Route_APAC_$RANDOM --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.201.0.116; 
  done < apac_supernet.list

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
  echo "$subnet_address" >> eur.list
done
done
done
done
done
python3 supernet.py eur.list > eur_supernet.list
  while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name TEST-Route-DPWHO-Security -n Route_EUR_$RANDOM --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.202.0.116; 
  done < eur_supernet.list

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
  echo "$subnet_address" >> uae.list
done
done
done
done
done
python3 supernet.py uae.list > uae_supernet.list
  while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name TEST-Route-DPWHO-Security -n Route_UAE_$RANDOM --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.254.15.20; 
  done < uae_supernet.list