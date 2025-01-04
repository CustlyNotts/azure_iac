resource "azurerm_monitor_metric_alert" "server_errors" {
  name                = "Severity1_${var.accountName}_ServiceBus_ServerErrors"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_servicebus_namespace.sb.id]
  description         = "Server Errors in Microsoft Service Bus"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.ServiceBus/Namespaces"
    metric_name      = "ServerErrors"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 50

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "throttled_requests" {
  name                = "Severity1_${var.accountName}_ServiceBus_ThrottledRequests"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_servicebus_namespace.sb.id]
  description         = "Throttled Requests for Microsoft Service Bus"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.ServiceBus/Namespaces"
    metric_name      = "ThrottledRequests"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.throttled_request_threshold

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "dead_letter_queue" {
  count               = length(var.queues)
  name                = "Severity1_${var.accountName}_ServiceBus_DeadLetteredQ(${var.queues[count.index]})"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_servicebus_namespace.sb.id]
  description         = "Count of dead-lettered messages in ${var.queues[count.index]} queue"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.ServiceBus/Namespaces"
    metric_name      = "DeadletteredMessages"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.dead_letter_threshold[count.index]

    dimension {
      name     = "EntityName"
      operator = "Include"
      values   = [var.queues[count.index]]
    }

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "active_message_queue" {
  count               = length(var.queues)
  name                = "Severity1_${var.accountName}_ServiceBus_ActiveMessageQ(${var.queues[count.index]})"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_servicebus_namespace.sb.id]
  description         = "Count of active messages in ${var.queues[count.index]} queue"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.ServiceBus/Namespaces"
    metric_name      = "ActiveMessages"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.active_messages_threshold[count.index]

    dimension {
      name     = "EntityName"
      operator = "Include"
      values   = [var.queues[count.index]]
    }

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_activity_log_alert" "resource_health" {
  name                = "Severity1_${var.accountName}_ServiceBus_ResourceHealth"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_servicebus_namespace.sb.id]
  description         = "Check the health of the resource"
  enabled             = true

  criteria {
    category       = "ResourceHealth"
    operation_name = "Microsoft.Resourcehealth/healthevent/Activated/action"
    resource_type  = "Microsoft.ServiceBus/Namespaces"
    resource_id    = data.azurerm_servicebus_namespace.sb.id

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