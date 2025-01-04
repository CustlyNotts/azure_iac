rm -f *.list

for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
for resource_group_name in $(az group list --subscription $i --query [].name -o tsv)
do
for vnet_name in $(az network vnet list --subscription $i -g $resource_group_name --query "[].name" -o tsv)
do
vnet_location=$(az network vnet show --subscription $i --resource-group $resource_group_name -n $vnet_name --query location -o tsv)
for vnet_addressSpace in $(az network vnet show --subscription $i -g $resource_group_name --name $vnet_name --query addressSpace.addressPrefixes -o tsv)
do
if [[ $vnet_location == *"canada"* || $vnet_location == *"us"* ]]; then
  echo "$vnet_address" >> amr_vnets.list
else
  if [[ $vnet_location == *"asia"* || $vnet_location == *"india"* || $vnet_location == *"korea"* ]]; then
    echo "$vnet_address" >> apac_vnets.list
  else
    if [[ $vnet_location == *"france"* || $vnet_location == *"europe"* || $vnet_location == *"uk"* ]]; then
      echo "$vnet_address" >> eur_vnets.list
    else
      if [[ $vnet_location == *"uae"* ]]; then
        echo "$vnet_address" >> uae_vnets.list
      fi
    fi
  fi
fi
done
done
done
done

python3 supernet.py amr_vnets.list > amr_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_AMR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.200.0.116; 
  done < amr_vnets_supernet.list

python3 supernet.py apac_vnets.list > apac_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_AMR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.201.0.116; 
  done < apac_vnets_supernet.list

python3 supernet.py eur_vnets.list > eur_vnets_supernet.list
while read LINE; do 
  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_AMR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.202.0.116; 
  done < eur_vnets_supernet.list

python3 supernet.py uae_vnets.list > uae_vnets_supernet.list
#while read LINE; do 
#  az network route-table route create --subscription cf524703-9d5e-4aa2-bbe9-975fe083f66a -g rgdlp --route-table-name VNETS-Route-DPWHO-Security -n Route_AMR_${LINE:0:-3} --next-hop-type VirtualAppliance --address-prefix $LINE --next-hop-ip-address 10.254.15.20; 
#  done < uae_vnets_supernet.list
