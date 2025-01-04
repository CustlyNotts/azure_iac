subscription_id     = <subscription_id>
name                   = "sql-cargoesrunnerprod-canadareplica"
resource_group_name    = "rg_cargoesRunner_prod"
mssql_version          = "12.0"
administrator_login    = "sqladmin"
administrator_password = "xxx"
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Azure.DBAdmin"
    object_id                   = "ceec2311-6545-4a6d-a8d6-b3887faa940f"
  }
]
tags = {
  "provider" : "b51535c2-ab3e-4a68-95f8-e2e3c9a19299",
  "ENV" : "PROD",
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Jabeer Yusuf"
}