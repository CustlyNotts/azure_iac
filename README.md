# Use Terraform from local machine

- clone this git repo to your local machine: 
    ```console
    git clone https://dpwhotfsonline.visualstudio.com/IT%20Infra/_git/IaC
    ```
- go inside direcotory where you want to work:
    ```console
    cd /Users/pavlotymoshchenkov/repos/IaC/aks
    ```
- initialize a working directory containing Terraform configuration files:
    ```console
    terraform init
    ```
- create new or switch to an existing workspace. Wokspace name ***MUST*** be equal to name of your *.tfvars file. If your file is ***aks-sharedapps-prod.tfvars*** workspace name is ***aks-sharedapps-prod***
    ```console
    terraform workspace new <workspace name> or terraform workspace select <workspace name>
    ```
- plan and apply configuration provided in your variable file:
    ```console
    terraform apply -var-file /Users/pavlotymoshchenkov/repos/IaC/aks/vars/aks-sharedapps-prod.tfvars
    ```
- ***CAREFULLY CHECK THE PLAN SUMMARY BEFORE APPLYING!!!*** It could contains destroy statements
# Import existing resources in Terraform

If you want to onboard existing resource in Terraform, you can follow next steps:
- create variable file with name equal to your resource name and extension tfvars. You can copy existing config of similar resource, rename it and change values inside accordingly
- create namespace with name equal to you variable file and resource name
    ```console
    terraform workspace new <resource_name>
    ```
- complete input variables with values from the azure AKS overview page, preferrably use the JSON view
   ```console
   vi /Users/pavlotymoshchenkov/repos/IaC/aks/vars/aks-sharedapps-prod.tfvars
   ```
- plan and apply configuration provided in your variable file: 
    ```console
    terraform apply -var-file /Users/pavlotymoshchenkov/repos/IaC/aks/vars/aks-sharedapps-prod.tfvars
    ```
- if resource is already exist you will get error similar to:
    ```console
    Error: A resource with the ID "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesshared-prod/providers/Microsoft.ContainerService/managedClusters/aks-sharedapps-prod/agentPools/usernodepool" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_kubernetes_cluster_node_pool" for more information.
    with azurerm_kubernetes_cluster_node_pool.userpool["usernodepool"],
    on terraform.tf line 79, in resource "azurerm_kubernetes_cluster_node_pool" "userpool":
    79: resource "azurerm_kubernetes_cluster_node_pool" "userpool" {
    ```
- in this case you can import each resource into Terraform state by executing next command (Note: the following command imports a nodepool named usernodepool):
  ```console 
  terraform import -var-file /Users/pavlotymoshchenkov/repos/IaC/aks/vars/aks-sharedapps-prod.tfvars 'azurerm_kubernetes_cluster_node_pool.userpool["usernodepool"]' "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesshared-prod/providers/Microsoft.ContainerService/managedClusters/aks-sharedapps-prod/agentPools/usernodepool"
  ```
