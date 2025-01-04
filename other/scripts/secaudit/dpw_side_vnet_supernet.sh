rm -f *.list

#AMR
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for vnet in $(az network vnet list --subscription $i --query "[?contains(location, 'canada' || 'us')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $vnet --query "[].name" -o tsv)
do
for vnet_address in $(az network vnet show --subscription $i -g $vnet --name $vnet_name --query addressSpace.addressPrefixes -o tsv)
do
  echo "$vnet_address" >> amr_vnets.list
done
done
done
done
python3 supernet.py amr_vnets.list > amr_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_AMR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.200.0.116; 
  done < amr_vnets_supernet.list

#APAC
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for vnet in $(az network vnet list --subscription $i --query "[?contains(location, 'asia' || 'india' || 'korea')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $vnet --query "[].name" -o tsv)
do
for vnet_address in $(az network vnet show --subscription $i -g $vnet --name $vnet_name --query addressSpace.addressPrefixes -o tsv)
do
  echo "$vnet_address" >> apac_vnets.list
done
done
done
done
python3 supernet.py apac_vnets.list > apac_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_APAC_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.201.0.116; 
  done < apac_vnets_supernet.list

#EUR
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for vnet in $(az network vnet list --subscription $i --query "[?contains(location, 'france' || 'europe' || 'uk')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $vnet --query "[].name" -o tsv)
do
for vnet_address in $(az network vnet show --subscription $i -g $vnet --name $vnet_name --query addressSpace.addressPrefixes -o tsv)
do
  echo "$vnet_address" >> eur_vnets.list
done
done
done
done
python3 supernet.py eur_vnets.list > eur_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_EUR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.202.0.116; 
  done < eur_vnets_supernet.list

###UAE
for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for vnet in $(az network vnet list --subscription $i --query "[?contains(location, 'uae')].resourceGroup" -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $vnet --query "[].name" -o tsv)
do
for vnet_address in $(az network vnet show --subscription $i -g $vnet --name $vnet_name --query addressSpace.addressPrefixes -o tsv)
do
 echo "$vnet_address" >> uae_vnets.list
done
done
done
done
python3 supernet.py uae_vnets.list > uae_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_UAE_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.254.15.20;
  done < uae_vnets_supernet.list