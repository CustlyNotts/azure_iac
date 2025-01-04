rm -rf /tmp/report
terraform workspace list > /tmp/workspaces_raw
sed 's/[* ]//g' /tmp/workspaces_raw > /tmp/workspaces
terraform init -upgrade
while read line; do
    if [ -f "./vars/$line.tfvars" ]; then
        if [ "$line" != "default" ]; then
            terraform workspace select $line
            terraform plan -var-file ./vars/$line.tfvars -lock=false -compact-warnings -out="/tmp/$line" # -refresh-only 
            drift=$(terraform show -no-color -json "/tmp/$line" | jq 'select(.resource_drift != null)' | wc -l)
            if [ "$drift" -ne 0 ]; then
                terraform workspace show >> /tmp/report
                terraform show -no-color -json "/tmp/$line" | jq '.resource_drift[] | select(.change.actions[]=="update" or .change.actions[]=="create") | .address' >> /tmp/report
                echo "----------------" >> /tmp/report
            fi
        fi
    fi
done < /tmp/workspaces