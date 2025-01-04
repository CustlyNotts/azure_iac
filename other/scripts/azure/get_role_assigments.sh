for i in $(az account list -o tsv | awk '{print$3}')
do
az account set --subscription $i
az role assignment list --role 96a38e57-66d6-d238-caad-973768a35878
# id=$(az role assignment list --query "[?roleDefinitionName == \`Route Tables Contributor\`].id")
# for id in $(az role assignment list --query "[?roleDefinitionName == \`Route Tables Contributor\`].id")
# do
# if [ -z "$id" ]
# then
    #   echo "az account set --subscription $i && az role assignment delete --ids $id"
# fi
# done
done