Variable | Description | Default
--------- | ----------- | -------
`subscription_id` | Azure subscription id, where resource will be created | `-`
`resource_group` | (Required) Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | `-`
`virtual_network` | Azure virtual network, where AKS will be connected | `-`
`virtual_network_resource_group` | Azure virtual network resource group | `-`
`subnet` | (Required) The subnet name for the virtual nodes to run. | `-`
`pod_subnet_enabled` | Enable dynamic allocation of IPs [More info](https://learn.microsoft.com/en-us/azure/aks/configure-azure-cni-dynamic-ip-allocation) | `false`
`pod_subnet` | if **pod_subnet_enabled = true** (Optional) The name of the Subnet where the pods in the default Node Pool should exist. Changing this forces a new resource to be created.   | `null`
`cluster_name` | (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `-`
`cluster_dns_prefix` | (Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created.  | `<cluster_name>-dns"`
`cluster_automatic_channel_upgrade` | (Optional) The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, node-image and stable. Omitting this field sets this value to none.  | `null`
`admin_username_enabled` | xxx  | `false`
`aks_admin_username` | if **admin_username_enabled=true** (Required) The Admin Username for the Cluster. Changing this forces a new resource to be created.  | `null`
`aks_ssh_key` | if **admin_username_enabled=true** (Required) An ssh_key block. Only one is currently allowed. Changing this will update the key on all node pools. More information can be found in the [documentation](https://learn.microsoft.com/en-us/azure/aks/node-access#update-ssh-key-on-an-existing-aks-cluster-preview).  | `null`
`kubernetes_version` | (Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in the [documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).  | `1.25.5`
`role_based_access_control_enabled` | (Optional) Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to true. Changing this forces a new resource to be created.  | `true`
`aad_kubernetes_rbac` | (Optional) Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration.  | `false`
`aad_kubernetes_rbac_admin_groups` | (Optional) A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster.  | `[]`
`aad_azure_rbac` | (Optional) Is Role Based Access Control based on Azure AD enabled?  | `false`
`local_account_disabled` | (Optional) If true local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information. If local_account_disabled is set to true, it is required to enable Kubernetes RBAC and AKS-managed Azure AD integration. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#azure-ad-authentication-overview) for more information.  | `false`
`oidc_issuer_enabled` | (Optional) Enable or Disable the [OIDC issuer URL](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer).  | `false`
`workload_identity_enabled` | (Optional) Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to false.  | `false`
`key_vault_secrets_provider` | (Optional) A key_vault_secrets_provider block as defined below. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver).  | `true`
`key_vault_secret_rotation_enabled` | (Optional) Should the secret store CSI driver on the AKS cluster be enabled?  | `true`
`aks_network_policy` | (Optional) Sets up network policy to be used with Azure CNI. [Network policy allows us to control the traffic flow between pods](https://docs.microsoft.com/azure/aks/use-network-policies). Currently supported values are calico and azure. Changing this forces a new resource to be created.  | `azure`
`aks_system_pool_name` | (Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created.  | `systempool`
`aks_system_pool_vm_size` | (Required) The size of the Virtual Machine, such as Standard_B4ms.  | `Standard_B4ms`
`aks_system_pool_enable_auto_scaling` | (Optional) Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool?  | `true`
`aks_system_pool_max_pods` | (Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created.  | `30`
`aks_system_pool_node_taints` | (Optional) A list of the taints added to new nodes during node pool create and scale. Changing this forces a new resource to be created.  | `[]`
`aks_system_pool_os_disk_type` | (Optional) The type of disk which should be used for the Operating System. Possible values are Ephemeral and Managed. Defaults to Managed. Changing this forces a new resource to be created.  | `Managed`
`aks_system_pool_zones` | (Optional) Specifies a list of Availability Zones in which this Node Pool should be located. Changing this forces a new Kubernetes Cluster to be created.  | `null`
`aks_system_pool_min_count` | (Optional) If enable_auto_scaling is set to true, the minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000.  | `1`
`aks_system_pool_max_count` | (Optional) If enable_auto_scaling is set to true, the maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000.  | `10`
`aks_system_pool_node_count` | (Optional) If enable_auto_scaling is set to false, the number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000.  | `1`
`aks_additional_node_pools` | (Optional) The map of parameters for the additional Node Pools which should be created within the Kubernetes Cluster.  | `{}`
`tags` | (Optional) A mapping of tags to assign to the resource.  | `{}`
`container_registries` | (Optional) A mapping of Azure Container registries to assign to the resource.  | `{}`
`dns_vnet_link` | (Optional) A mapping of Azure Virtual networks to assign to the cluster private DNS.  | `{}`
`aks_workloads_enabled` | (Optional) Install Kubernetes workloads, like Kubecost, NewRelic, Nginx Ingress etc.  | `true`
`kubecost_version` | (Optional) If aks_workloads_enabled is set to true, version of Kubecost that will beinstalled.  | `1.102.2`
`kubecost_ip` | (Optional) If aks_workloads_enabled is set to true, internal Load Balancer IP of Kubecost.  | `null`
`kubecost_master` | (Optional) If aks_workloads_enabled is set to true, apply master configuration of Kubecost.  | `false`
`newrelic_enabled` | (Optional) If aks_workloads_enabled is set to true, enable NewRelic installation.  | `null`
`nginx_ingress_enabled` | (Optional) If aks_workloads_enabled is set to true, enable Nginx Ingress installation.  | `null`