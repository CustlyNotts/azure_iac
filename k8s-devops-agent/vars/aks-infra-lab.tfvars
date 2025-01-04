subscription_id     = <subscription_id>
aks_cluster_name             = "aks-lab-infra"
aks_resource_group_name      = "aks-lab"
namespace_name               = "azuredevopsagenttest"
keyvault_name                = "kv-aks-labs"
keyvault_resource_group_name = "aks-lab"
azp_pool                     = "aks-lab-infra" #name of your agent pool in Azure DevOps config. Should be created beforehand
azp_url                      = "https://dev.azure.com/dpwhotfsonline"
azp_token_secret = "AZP-TOKEN"
agent_image      = "acrdpwinfra.azurecr.io/k8s-devops-agent:20230711"