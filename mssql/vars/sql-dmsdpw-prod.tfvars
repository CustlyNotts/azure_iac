subscription_id     = <subscription_id>
name                   = "sql-dmsdpw-prod"
resource_group_name    = "rg-dms-prod"
mssql_version          = "12.0"
administrator_login    = "sqladmin"
administrator_password = "Dpworld2024$$$"
minimum_tls_version = "Disabled"
public_network_access_enabled        = false
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Azure.DBAdmin"
    object_id                   = "ceec2311-6545-4a6d-a8d6-b3887faa940f"
  }
]
tags = {
      "Application Name": "DMS",
      "Application Owner": "Kapil/Rhoederick",
      "ENV": "Prod"
}

mssql_elastic_pool = {
    ep-dms-prod = {
        max_size_gb = 200
        sku_name     = "StandardPool"
        sku_tier     = "Standard"
        sku_capacity = 100
        #sku_family   = "Gen4"
        min_capacity = 20
        max_capacity = 100
    }
}
 
 
mssql_databases = {
    sql-dms-prod = {
        create_mode = "Default"
        elastic_pool_name = "ep-dms-prod"
    }
}
