subscription_id     = <subscription_id>
name                   = "sqlprdecomm"
resource_group_name    = "rg-ecommerce-prod"
mssql_version          = "12.0"
administrator_login    = "sqladmin"
minimum_tls_version    = "Disabled"
administrator_password = "xxx"
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Azure.DBAdmin"
    object_id                   = "ceec2311-6545-4a6d-a8d6-b3887faa940f"
  }
]
tags = {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Arup Sarkar",
        "ENV": "PROD"
}