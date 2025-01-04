for i in $(az account list -o tsv | awk '{print$3}')
do 
az account set --subscription $i
az network route-table list --query "[].{RouteTable:name,ResourceGroup:resourceGroup,Location:location,Subnets:subnets[],Route:routes[].{network:addressPrefix, nexthop:nextHopIpAddress}}" >> report.json
done