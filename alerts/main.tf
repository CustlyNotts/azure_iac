# resource "azurerm_monitor_action_group" "logic_app" {
#   name                = "example-actiongroup"
#   resource_group_name = azurerm_resource_group.example.name
#   short_name          = "exampleact"

#   logic_app_receiver {
#     name                    = "logicappaction"
#     resource_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp"
#     callback_url            = "https://logicapptriggerurl/..."
#     use_common_alert_schema = true
#   }
# }

resource "azurerm_monitor_metric_alert" "aks" {
  count               = length(data.azurerm_resources.aks.resources)
  name                = "CPU Usage Percentage - ${data.azurerm_resources.aks.resources[count.index].name}"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_resources.aks.resources[count.index].id]
  description         = "Action will be triggered when Transactions count is greater than 50."

  criteria {
    metric_namespace = "Microsoft.ContainerService/managedClusters"
    metric_name      = "node_cpu_usage_percentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-newrelic/providers/microsoft.insights/actionGroups/ag-azurealerts"
  }

  lifecycle {
    prevent_destroy = true
  }
}