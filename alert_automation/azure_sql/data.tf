data "azurerm_mssql_database" "sql_database" {
  name      = var.name
  server_id = var.server_id
}