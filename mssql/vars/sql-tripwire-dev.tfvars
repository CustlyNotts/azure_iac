subscription_id     = <subscription_id>
name                   = "sql-tripwire-dev"
resource_group_name    = "rg-tripwire-dev"
mssql_version          = "12.0"
administrator_login    = "sqladmin"
minimum_tls_version    = "1.2"
administrator_password = "DPWorld2023@sqlserver"
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Nowphal.Azadmin@dpwapps.com"
    object_id                   = "ced92193-c22c-46a3-b9c7-f4fd9859ee3f"
  }
]

tags = {
    "Application Name": "Tripwire",
    "Application Owner": "Tayo Oyeyemi",
    "ENV": "DEV",
    "RITM": "RITM0098480",
}

mssql_elastic_pool = {
    tripwiredevpool = {
        max_size_gb = 32
        sku_name     = "GP_Gen5"
        sku_tier     = "GeneralPurpose"
        sku_family   = "Gen5"
        sku_capacity = 2
        min_capacity = 0.25
        max_capacity = 2
    }
}

mssql_databases = {
    tripwiredev = {
        create_mode = "Default"
    }
}

elastic_pool_name    = "tripwiredevpool"