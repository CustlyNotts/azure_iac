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
  route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security --query "[?name=='Route_AMR_$vnet_name'].name" -o tsv)
  if [ -n "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_AMR_$vnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.200.0.116
  else
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_AMR_$vnet_name --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.200.0.116
  fi
done
done
done
done

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
  route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security --query "[?name=='Route_APAC_$vnet_name'].name" -o tsv)
  if [ -n "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_APAC_$vnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.201.0.116
  else
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_APAC_$vnet_name --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.201.0.116
  fi
done
done
done
done

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
  route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security --query "[?name=='Route_EUR_$vnet_name'].name" -o tsv)
  if [ -n "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_EUR_$vnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.202.0.116
  else
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_EUR_$vnet_name --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.202.0.116
  fi
done
done
done
done

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
  route=$(az network route-table route list --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security --query "[?name=='Route_UAE_$vnet_name'].name" -o tsv)
  if [ -n "$route" ]; then
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_UAE_$vnet_name-$RANDOM --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.254.15.20
  else
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name Route-DPWHO-Security -n Route_UAE_$vnet_name --next-hop-type VirtualAppliance --address-prefix $vnet_address --next-hop-ip-address 10.254.15.20
  fi
done
done
done
done
