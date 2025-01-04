resource "azurerm_monitor_metric_alert" "network_in" {
  name                = "Severity1_${var.accountName}_VM_NetworkIn"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The number of bytes received on all network interfaces of the VM"
  severity            = 1

  dynamic_criteria {
    metric_namespace  = "Microsoft.Compute/virtualMachines" #"Microsoft.ContainerService/managedClusters"
    metric_name       = "Network In"                        #"node_cpu_usage_percentage"
    aggregation       = "Average"                           #"Average"
    operator          = "GreaterThan"                       #"GreaterThan"
    alert_sensitivity = "Medium"

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "network_out" {
  name                = "Severity1_${var.accountName}_VM_NetworkOut"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The number of bytes out on all network interfaces of the VM"
  severity            = 1

  dynamic_criteria {
    metric_namespace  = "Microsoft.Compute/virtualMachines" #"Microsoft.ContainerService/managedClusters"
    metric_name       = "Network Out"                       #"node_cpu_usage_percentage"
    aggregation       = "Average"                           #"Average"
    operator          = "GreaterThan"                       #"GreaterThan"
    alert_sensitivity = "Medium"

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "memory_utilization" {
  count               = var.security_VM ? 1 : 0
  name                = "Severity1_${var.accountName}_VM_MemoryUtilization"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The percentage of memory usage"
  severity            = 1

  dynamic_criteria {
    metric_namespace  = "Microsoft.Compute/virtualMachines"
    metric_name       = "Available Memory Bytes"
    aggregation       = "Average"
    operator          = "GreaterThan"
    alert_sensitivity = "Medium"

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "cpu_percent_1" {
  count               = var.security_VM ? 1 : 0
  name                = "Severity1_${var.accountName}_VM_PercentageCPU"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The percentage CPU usage"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 95

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "cpu_percent_2" {
  count               = var.security_VM ? 1 : 0
  name                = "Severity2_${var.accountName}_VM_PercentageCPU"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The percentage CPU usage"
  severity            = 2

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 85

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "cpu_percent_3" {
  count               = var.security_VM ? 1 : 0
  name                = "Severity3_${var.accountName}_VM_PercentageCPU"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "The percentage CPU usage"
  severity            = 3

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 75

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_activity_log_alert" "resource_health" {
  name                = "Severity1_${var.accountName}_VM_ResourceHealth"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_virtual_machine.vm.id]
  description         = "Check the health of the resource"
  enabled             = true

  criteria {
    category       = "ResourceHealth"
    operation_name = "Microsoft.Resourcehealth/healthevent/Activated/action"
    resource_type  = "Microsoft.Compute/virtualMachines"
    resource_id    = data.azurerm_virtual_machine.vm.id

    resource_health {
      current  = ["Degraded", "Unavailable"]
      previous = ["Available"]
    }
  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

