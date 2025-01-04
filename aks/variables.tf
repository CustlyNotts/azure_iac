variable "subscription_id" {
  type = string
}
variable "resource_group" {
  type = string
}
variable "virtual_network" {
  type = string
}
variable "virtual_network_resource_group" {
  type = string
}
variable "subnet" {
  type = string
}
variable "pod_subnet_enabled" {
  type    = bool
  default = false
}
variable "pod_subnet" {
  type    = string
  default = null
}
variable "cluster_name" {
  type = string
}
variable "cluster_dns_prefix" {
  type    = string
  default = null
}
variable "cluster_automatic_channel_upgrade" {
  type    = string
  default = null
}
variable "admin_username_enabled" {
  type    = bool
  default = false
}
variable "aks_admin_username" {
  type    = string
  default = null
}
variable "aks_ssh_key" {
  type    = string
  default = null
}
variable "kubernetes_version" {
  type = string
}
variable "rbac_enabled" {
  type    = bool
  default = true
}
variable "aad_kubernetes_rbac" {
  type    = bool
  default = false
}
variable "aad_kubernetes_rbac_admin_groups" {
  type    = list(any)
  default = []
}
variable "aad_azure_rbac" {
  type    = bool
  default = false
}
variable "local_account_disabled" {
  type    = bool
  default = null
}
variable "oidc_issuer_enabled" {
  type    = bool
  default = false
}
variable "workload_identity_enabled" {
  type    = bool
  default = false
}
variable "key_vault_secrets_provider" {
  type    = bool
  default = false
}
variable "key_vault_secret_rotation_enabled" {
  type    = bool
  default = false
}
variable "aks_network_policy" {
  type    = string
  default = "azure"
}
variable "aks_system_pool_name" {
  type    = string
  default = "systempool"
}
variable "aks_system_pool_vm_size" {
  type    = string
  default = "Standard_B4ms"
}
variable "aks_system_pool_enable_auto_scaling" {
  type    = bool
  default = true
}
variable "aks_system_pool_max_pods" {
  type    = string
  default = 30
}
variable "aks_system_pool_node_taints" {
  type    = list(any)
  default = []
}
variable "aks_system_pool_os_disk_size_gb" {
  type    = string
  default = null
}
variable "aks_system_pool_os_disk_type" {
  type    = string
  default = "Managed"
}
variable "aks_system_pool_zones" {
  type    = list(any)
  default = null
}
variable "aks_system_pool_min_count" {
  type    = string
  default = 1
}
variable "aks_system_pool_max_count" {
  type    = string
  default = 10
}
variable "aks_system_pool_node_count" {
  type    = string
  default = 1
}
variable "aks_system_pool_only_critical_addons_enabled" {
  type    = bool
  default = false
}
variable "aks_additional_node_pools" {
  type = map(object({
    aks_user_pool_vm_size             = optional(string, "Standard_B4ms")
    aks_user_pool_os_disk_size_gb     = optional(string, null)
    aks_user_pool_os_disk_type        = optional(string, "Managed")
    aks_user_pool_enable_auto_scaling = optional(bool, true)
    aks_user_pool_os_type             = optional(string)
    aks_user_pool_min_count           = optional(string, 1)
    aks_user_pool_max_count           = optional(string, 10)
    aks_user_pool_max_pods            = optional(string, 50)
    aks_user_pool_node_count          = optional(string)
    aks_user_pool_zones               = optional(list(string), null)
    aks_user_pool_node_taints         = optional(list(string))
    aks_user_pool_node_labels         = optional(map(string), null)
    aks_user_pool_mode                = optional(string)
    aks_user_pool_workload_runtime    = optional(string)
    aks_user_pool_spot_max_price      = optional(string, -1)
    aks_user_pool_eviction_policy     = optional(string, "Delete")
    aks_user_pool_priority            = optional(string, "Regular")
  }))
  default = {}
}

variable "sku_tier" {
  type    = string
  default = null
}

variable "aks_user_pool_update_settings" {
  type = map(string)
  default = {
    max_surge = "1"
  }
}

variable "drain_timeout_in_minutes" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable "container_registries" {
  type = map(object({
    resource_group = string
  }))
  default = {}
}
variable "dns_vnet_link" {
  type = map(object({
    virtual_network_id   = string
    registration_enabled = optional(bool)
  }))
  default = {}
}
variable "aks_workloads_enabled" {
  type    = bool
  default = true
}
variable "kubecost_version" {
  type    = string
  default = "1.102.2"
}
variable "kubecost_ip" {
  type    = string
  default = null
}
variable "kubecost_master" {
  type    = bool
  default = false
}
variable "newrelic_enabled" {
  type    = bool
  default = false
}
variable "nginx_ingress_enabled" {
  type    = bool
  default = false
}

variable "sechub_link_name" {
  type    = string
  default = "vnetsechub"
}

variable "wvd_link_name" {
  type    = string
  default = "VnetWVDall"
}

variable "pod_cidr" {
  type    = string
  default = "10.204.0.0/16"
}

variable "temporary_name_for_rotation" {
  type    = string
  default = "systempool"
}


variable "node_os_upgrade_channel" {
  type    = string
  default = "None"
}


variable "image_cleaner_interval_hours" {
  type    = number
  default = null
}
