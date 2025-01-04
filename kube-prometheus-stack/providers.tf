terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "= 3.58.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "= 2.20.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "= 2.10.0"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "kube_prometheus_stack.tfstate"
  }

}

provider "azurerm" {
  # alias = "current"
  features {}
  subscription_id = var.subscription_id
  # use_msi = true
}
provider "helm" {
  kubernetes {
    #config_path = local_file.kubeconfig.filename
    # host                   = "${azurerm_kubernetes_cluster.current.kube_config.0.host}"
    host                   = "https://${data.azurerm_kubernetes_cluster.current.fqdn}:443"
    cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.cluster_ca_certificate)
    client_certificate     = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.client_certificate)
    client_key             = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.client_key)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"

      # Note: The AAD server app ID of AKS Managed AAD is always 6dae42f8-4368-4678-94ff-3960e28e3630 in any environments.
      # See https://github.com/Azure/kubelogin#exec-plugin-format
      args    = ["get-token", "--server-id", "6dae42f8-4368-4678-94ff-3960e28e3630", "--login", "azurecli"]
      command = "kubelogin"
    }
  }
}

provider "kubernetes" {
  # host                   = "${azurerm_kubernetes_cluster.current.kube_config.0.host}"
  host                   = "https://${data.azurerm_kubernetes_cluster.current.fqdn}:443"
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.cluster_ca_certificate)
  client_certificate     = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.client_certificate)
  client_key             = base64decode(data.azurerm_kubernetes_cluster.current.kube_config.0.client_key)

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"

    # Note: The AAD server app ID of AKS Managed AAD is always 6dae42f8-4368-4678-94ff-3960e28e3630 in any environments.
    # See https://github.com/Azure/kubelogin#exec-plugin-format
    args    = ["get-token", "--server-id", "6dae42f8-4368-4678-94ff-3960e28e3630", "--login", "azurecli"]
    command = "kubelogin"
  }
}
