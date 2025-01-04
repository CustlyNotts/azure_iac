resource "azurerm_kubernetes_cluster" "current" {
  name                         = var.cluster_name
  location                     = data.azurerm_resource_group.current.location
  resource_group_name          = var.resource_group
  dns_prefix                   = var.cluster_dns_prefix != null ? var.cluster_dns_prefix : "${var.cluster_name}-dns"
  oidc_issuer_enabled          = var.oidc_issuer_enabled
  workload_identity_enabled    = var.workload_identity_enabled
  image_cleaner_interval_hours = var.image_cleaner_interval_hours
  sku_tier                     = coalesce(var.sku_tier, lookup(var.tags, "ENV") == "PROD" ? "Standard" : "Free")
  automatic_upgrade_channel    = var.cluster_automatic_channel_upgrade
  node_os_upgrade_channel      = var.node_os_upgrade_channel
  dynamic "network_profile" {
    for_each = var.aks_network_policy == "azure" ? [1] : []
    content {
      network_plugin = "azure"
      network_policy = "azure"
    }
  }
  dynamic "network_profile" {
    for_each = var.aks_network_policy == "none" ? [1] : []
    content {
      network_plugin = "azure"
    }
  }
  dynamic "network_profile" {
    for_each = var.aks_network_policy == "overlay" ? [1] : []
    content {
      network_plugin      = "azure"
      network_plugin_mode = "overlay"
      pod_cidr            = var.pod_cidr
    }
  }
  kubernetes_version                  = var.kubernetes_version
  azure_policy_enabled                = true
  private_cluster_enabled             = true
  private_cluster_public_fqdn_enabled = true
  role_based_access_control_enabled   = var.rbac_enabled
  local_account_disabled              = var.aad_kubernetes_rbac ? var.local_account_disabled : false
  tags                                = var.tags
  dynamic "azure_active_directory_role_based_access_control" {
    for_each = var.aad_kubernetes_rbac || var.aad_azure_rbac ? [1] : []
    content {
      admin_group_object_ids = var.aad_kubernetes_rbac_admin_groups
      azure_rbac_enabled     = var.aad_azure_rbac
    }
  }
  dynamic "linux_profile" {
    for_each = var.admin_username_enabled ? [1] : []
    content {
      admin_username = var.aks_admin_username
      ssh_key {
        key_data = var.aks_ssh_key
      }
    }
  }
  dynamic "key_vault_secrets_provider" {
    for_each = var.key_vault_secrets_provider ? [1] : []
    content {
      secret_rotation_enabled = var.key_vault_secret_rotation_enabled
    }
  }
  default_node_pool {
    name = var.aks_system_pool_name
    #temporary_name_for_rotation  = coalesce(var.temporary_name_for_rotation, substr(var.aks_system_pool_name, length(var.aks_system_pool_name) - 3, 3) == "tmp" ? null : substr("${var.aks_system_pool_name}tmp", 0, 12))
    #temporary_name_for_rotation = var.temporary_name_for_rotation == var.aks_system_pool_name ? null : var.temporary_name_for_rotation != ""? var.temporary_name_for_rotation : substr("${var.aks_system_pool_name}tmp", 0, 12)
    temporary_name_for_rotation = var.temporary_name_for_rotation == var.aks_system_pool_name ? null : var.temporary_name_for_rotation != null ? substr("${var.aks_system_pool_name}tmp", 0, 12) : null
    vm_size                     = var.aks_system_pool_vm_size
    orchestrator_version        = var.kubernetes_version
    auto_scaling_enabled        = var.aks_system_pool_enable_auto_scaling
    min_count                   = var.aks_system_pool_enable_auto_scaling ? var.aks_system_pool_min_count : null
    max_count                   = var.aks_system_pool_enable_auto_scaling ? var.aks_system_pool_max_count : null
    node_count                  = var.aks_system_pool_enable_auto_scaling ? null : var.aks_system_pool_node_count
    max_pods                    = var.aks_system_pool_max_pods
    os_disk_size_gb             = var.aks_system_pool_os_disk_size_gb
    os_disk_type                = var.aks_system_pool_os_disk_type
    vnet_subnet_id              = data.azurerm_subnet.vnet.id
    tags                        = var.tags
    pod_subnet_id               = var.pod_subnet_enabled ? data.azurerm_subnet.pods[0].id : null
    zones                       = lookup(var.tags, "ENV") == "PROD" && var.aks_system_pool_zones == null ? ["1", "2", "3"] : var.aks_system_pool_zones != null ? var.aks_system_pool_zones : []
    #node_taints                  = var.aks_system_pool_node_taints ###Its deprecated for default systempool
    only_critical_addons_enabled = var.aks_system_pool_only_critical_addons_enabled
    upgrade_settings {
      max_surge                = "33%"
      drain_timeout_in_minutes = var.drain_timeout_in_minutes
    }
  }
  identity {
    type = "SystemAssigned"
  }
  lifecycle {
    ignore_changes = [
      tags["scheduler"],
      default_node_pool.0.tags["scheduler"],
      default_node_pool.0.node_count
    ]
    #prevent_destroy = true
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "userpool" {
  for_each              = var.aks_additional_node_pools
  name                  = each.key
  kubernetes_cluster_id = azurerm_kubernetes_cluster.current.id
  orchestrator_version  = var.kubernetes_version
  vm_size               = each.value.aks_user_pool_vm_size
  auto_scaling_enabled  = each.value.aks_user_pool_enable_auto_scaling
  min_count             = each.value.aks_user_pool_enable_auto_scaling ? each.value.aks_user_pool_min_count : null
  max_count             = each.value.aks_user_pool_enable_auto_scaling ? each.value.aks_user_pool_max_count : null
  node_count            = each.value.aks_user_pool_enable_auto_scaling ? null : each.value.aks_user_pool_node_count
  node_labels           = each.value.aks_user_pool_node_labels
  max_pods              = each.value.aks_user_pool_max_pods
  os_disk_size_gb       = each.value.aks_user_pool_os_disk_size_gb
  os_disk_type          = each.value.aks_user_pool_os_disk_type
  os_type               = each.value.aks_user_pool_os_type
  spot_max_price        = each.value.aks_user_pool_spot_max_price
  priority              = each.value.aks_user_pool_priority
  workload_runtime      = each.value.aks_user_pool_workload_runtime
  vnet_subnet_id        = data.azurerm_subnet.vnet.id
  eviction_policy       = each.value.aks_user_pool_priority == "Spot" ? each.value.aks_user_pool_eviction_policy : null
  tags                  = var.tags
  pod_subnet_id         = var.pod_subnet_enabled ? data.azurerm_subnet.pods[0].id : null
  zones                 = lookup(var.tags, "ENV") == "PROD" && each.value.aks_user_pool_zones == null ? ["1", "2", "3"] : each.value.aks_user_pool_zones != null ? each.value.aks_user_pool_zones : []
  node_taints           = each.value.aks_user_pool_node_taints
  mode                  = each.value.aks_user_pool_mode
  dynamic "upgrade_settings" {
    for_each = each.value.aks_user_pool_priority != "Spot" ? [1] : []
    content {
      max_surge                = each.value.aks_user_pool_priority == "Spot" ? "1" : "33%"
      drain_timeout_in_minutes = var.drain_timeout_in_minutes
    }
  }
  lifecycle {
    ignore_changes = [
      tags["scheduler"],
      node_count
    ]
    prevent_destroy = false
  }
}

resource "azurerm_role_assignment" "acrdpwinfra" {
  principal_id                     = azurerm_kubernetes_cluster.current.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.ContainerRegistry/registries/acrdpwinfra"
  skip_service_principal_aad_check = true
}

resource "azurerm_role_assignment" "acr" {
  for_each             = var.container_registries
  principal_id         = azurerm_kubernetes_cluster.current.kubelet_identity[0].object_id
  role_definition_name = "AcrPull"
  scope                = data.azurerm_container_registry.current[each.key].id
}

resource "azurerm_role_assignment" "internal-lb" {
  scope                = data.azurerm_virtual_network.current.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_kubernetes_cluster.current.identity[0].principal_id
}

resource "azurerm_private_dns_zone_virtual_network_link" "current" {
  for_each              = var.dns_vnet_link
  name                  = each.key
  resource_group_name   = azurerm_kubernetes_cluster.current.node_resource_group
  private_dns_zone_name = local.private_dns_zone_name
  virtual_network_id    = each.value.virtual_network_id
  registration_enabled  = each.value.registration_enabled
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnetsechub" {
  name                  = var.sechub_link_name
  resource_group_name   = azurerm_kubernetes_cluster.current.node_resource_group
  private_dns_zone_name = local.private_dns_zone_name
  virtual_network_id    = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "VnetWVDall" {
  name                  = var.wvd_link_name
  resource_group_name   = azurerm_kubernetes_cluster.current.node_resource_group
  private_dns_zone_name = local.private_dns_zone_name
  virtual_network_id    = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "null_resource" "aks_workloads_vars" {
  triggers = {
    # always_run = "${timestamp()}"
    azurerm_kubernetes_cluster_id = azurerm_kubernetes_cluster.current.id
    subscription_id               = var.subscription_id
    aks_workloads_enabled         = var.aks_workloads_enabled
    kubecost_version              = var.kubecost_version
    kubecost_ip                   = var.kubecost_ip
    kubecost_master               = var.kubecost_master
    newrelic_enabled              = var.newrelic_enabled
    nginx_ingress_enabled         = var.nginx_ingress_enabled
    resource_group                = var.resource_group
    cluster_name                  = var.cluster_name
  }
  provisioner "local-exec" {
    command = <<-EOT
      chmod +x ./set_vars.sh
      ./set_vars.sh
      terraform fmt ./aks_workloads/vars/${var.cluster_name}.tfvars
    EOT
    environment = {
      subscription_id       = var.subscription_id
      aks_workloads_enabled = var.aks_workloads_enabled
      kubecost_version      = var.kubecost_version
      kubecost_ip           = var.kubecost_ip
      kubecost_master       = var.kubecost_master
      newrelic_enabled      = var.newrelic_enabled
      nginx_ingress_enabled = var.nginx_ingress_enabled
      resource_group        = var.resource_group
      cluster_name          = var.cluster_name
    }
  }
}

