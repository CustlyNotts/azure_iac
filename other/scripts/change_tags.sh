old_tag=" ENV=PROD-DR"
# old_tag="Env=TESTING"
new_tag="ENV=DR"

for i in $(az account list -o tsv | awk '{print$3}'); do
    rgs="$(az group list --subscription $i --tag "$old_tag" --query [].id -o tsv)"
    for rg in $rgs; do
        echo "az tag update --subscription '$i' --resource-id '$rg' --operation Delete --tags '$old_tag' && az tag update --subscription '$i' --resource-id '$rg' --operation Merge --tags '$new_tag'"
    done
    ids="$(az resource list --subscription $i --tag "$old_tag" --query [].id -o tsv)"
    for id in $ids; do
        echo "az tag update --subscription '$i' --resource-id '$id' --operation Delete --tags '$old_tag' && az tag update --subscription '$i' --resource-id '$id' --operation Merge --tags '$new_tag'"
    done
done
