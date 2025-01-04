resource "azurerm_monitor_metric_alert" "cpu_percent_sev1" {
  name                = "Severity1_${var.accountName}_${var.name}_CPUPercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The CPU Usage of the database"
  severity            = 1
  window_size         = "PT10M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "cpu_percent"
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

resource "azurerm_monitor_metric_alert" "cpu_percent_sev2" {
  name                = "Severity1_${var.accountName}_${var.name}_CPUPercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The CPU Usage of the database"
  severity            = 2
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "cpu_percent"
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

resource "azurerm_monitor_metric_alert" "cpu_percent_sev3" {
  name                = "Severity1_${var.accountName}_${var.name}_CPUPercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The CPU Usage of the database"
  severity            = 3
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "cpu_percent"
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

resource "azurerm_monitor_metric_alert" "dtu_consumption_sev1" {
  name                = "Severity1_${var.accountName}_${var.name}_DTU_Usage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The DTU usage percentage"
  severity            = 1
  window_size         = "PT10M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "dtu_consumption_percent"
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

resource "azurerm_monitor_metric_alert" "dtu_consumption_sev2" {
  name                = "Severity1_${var.accountName}_${var.name}_DTU_Usage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The DTU usage percentage"
  severity            = 2
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "dtu_consumption_percent"
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

resource "azurerm_monitor_metric_alert" "dtu_consumption_sev3" {
  name                = "Severity1_${var.accountName}_${var.name}_DTU_Usage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The DTU usage percentage"
  severity            = 3
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "dtu_consumption_percent"
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

resource "azurerm_monitor_metric_alert" "failed_connections" {
  name                = "Severity1_${var.accountName}_${var.name}_FailedConnections"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The number of failed connections"
  severity            = 1
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "connection_failed"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.failed_connections_threshold

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "dead_lock" {
  name                = "Severity1_${var.accountName}_${var.name}_DeadLock"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "The number of dead locks"
  severity            = 1
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "deadlock"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.deadlock_threshold

  }

  action {
    action_group_id = var.action_group_id
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_monitor_metric_alert" "storage_percent_sev1" {
  name                = "Severity1_${var.accountName}_${var.name}_HighStoragePercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Percentage of data space used"
  severity            = 1
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "storage_percent"
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

resource "azurerm_monitor_metric_alert" "storage_percent_sev2" {
  name                = "Severity1_${var.accountName}_${var.name}_HighStoragePercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Percentage of data space used"
  severity            = 2
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "storage_percent"
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

resource "azurerm_monitor_metric_alert" "storage_percent_sev3" {
  name                = "Severity1_${var.accountName}_${var.name}_HighStoragePercent"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Percentage of data space used"
  severity            = 3
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "storage_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev1" {
  name                = "Severity1_${var.accountName}_${var.name}_ServerProcessMemory"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 1
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "sqlserver_process_memory_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev2" {
  name                = "Severity1_${var.accountName}_${var.name}_ServerProcessMemory"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 2
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "sqlserver_process_memory_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev3" {
  name                = "Severity1_${var.accountName}_${var.name}_ServerProcessMemory"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 3
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "sqlserver_process_memory_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev1" {
  name                = "Severity1_${var.accountName}_${var.name}_HighIOPercentage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 1
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "physical_data_read_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev2" {
  name                = "Severity1_${var.accountName}_${var.name}_HighIOPercentage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 2
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "physical_data_read_percent"
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

resource "azurerm_monitor_metric_alert" "server_process_memory_sev3" {
  name                = "Severity1_${var.accountName}_${var.name}_HighIOPercentage"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Memory usage as a percentage of the SQL DB process"
  severity            = 3
  #window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = "physical_data_read_percent"
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
  name                = "Severity1_${var.accountName}_${var.name}_ResourceHealth"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_mssql_database.sql_database.id]
  description         = "Check the health of the resource"
  enabled             = true

  criteria {
    category       = "ResourceHealth"
    operation_name = "Microsoft.Resourcehealth/healthevent/Activated/action"
    resource_type  = "Microsoft.Sql/servers/databases"
    resource_id    = data.azurerm_mssql_database.sql_database.id

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