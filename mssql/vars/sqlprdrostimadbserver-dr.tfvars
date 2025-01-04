subscription_id     = <subscription_id>
name                   = "sqlprdrostimadbserver-dr"
resource_group_name    = "Rg-Rostima-Prod"
location               = "uksouth"
mssql_version          = "12.0"
administrator_login    = "CloudSA98ebaed8"
administrator_password = "xxx"
minimum_tls_version                  = "Disabled"
public_network_access_enabled        = false
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Azure.DBAdmin"
    object_id                   = "ceec2311-6545-4a6d-a8d6-b3887faa940f"
  }
]
tags = {
      "Application Name": "Rostima",
        "Application Owner": "Hasaan Malik",
        "ENV": "PROD"
}

mssql_elastic_pool = {}
 
 
mssql_databases = {
    SqldbRosteringprod = {
        create_mode = "Default"
        transparent_data_encryption_enabled = true
    }
}
 
elastic_pool_name    = ""