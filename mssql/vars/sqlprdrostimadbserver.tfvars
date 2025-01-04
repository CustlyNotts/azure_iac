subscription_id     = <subscription_id>
name                   = "sqlprdrostimadbserver"
resource_group_name    = "Rg-Rostima-Prod"
mssql_version          = "12.0"
administrator_login    = "sqladmin"
administrator_password = "xxxx"
minimum_tls_version = "Disabled"
public_network_access_enabled        = true
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

mssql_elastic_pool = {
    rostimaprddbpool = {
        max_size_gb = 160
        sku_name     = "GP_Gen5"
        sku_tier     = "GeneralPurpose"
        sku_family   = "Gen5"
        sku_capacity = 4
        min_capacity = 0
        max_capacity = 4
    }
}
 
 
mssql_databases = {
    SqldbRosteringpreprod = {
        create_mode = "Default"
        elastic_pool_name = "rostimaprddbpool"
    },
    SqldbRosteringprod = {
        create_mode = "Default"
        elastic_pool_name = "rostimaprddbpool"
    }
}
 
