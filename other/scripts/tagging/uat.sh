# ENV=PROD
# ENV=UAT
# ENV=STAGING
# ENV=TESTING
# ENV=DEV
# ENV=DR

 ###################UAT##########################

for i in $(az account list -o tsv | awk '{print$3}')
do
while read LINE; do 
old_tag=$LINE
new_tag="ENV=UAT"
for resource in $(az resource list --subscription $i --tag "$old_tag" --query [].id -o tsv)
do
az resource tag --subscription $i --tags "$new_tag" --ids $resource
az tag delete --subscription $i --name "$old_tag" --resource-id $resource --yes
done
done < uat.tags
done