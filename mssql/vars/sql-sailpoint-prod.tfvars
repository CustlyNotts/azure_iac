subscription_id     = <subscription_id>
name                   = "sailpointiiqprod"
resource_group_name    = "rg-sailpoint-prod"
mssql_version          = "12.0"
administrator_login    = "sailpointadmin"
minimum_tls_version    = "1.2"
administrator_password = "DPWorld2024@sqlserver"
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Nowphal.Azadmin@dpwapps.com"
    object_id                   = "ced92193-c22c-46a3-b9c7-f4fd9859ee3f"
  }
]

tags = {
    "Application Owner" : "Gagandeep Singh",
    "ENV" : "prod",
    "Application Name" : "Sailpoint",
    "RITM" : "RITM0103773"
}

mssql_elastic_pool = {
    ep-sailpointprodpool = {
        max_size_gb = 200
        sku_name     = "GP_Gen5"
        sku_tier     = "GeneralPurpose"
        sku_family   = "Gen5"
        sku_capacity = 4
        min_capacity = 0.25
        max_capacity = 4
    }
}

mssql_databases = {
    identityiq = {
        create_mode = "Default"
        elastic_pool_name    = "ep-sailpointprodpool"
    },
    identityiqah = {
        create_mode = "Default"
        elastic_pool_name    = "ep-sailpointprodpool"
    },
    identityiqPlugin = {
        create_mode = "Default"
        elastic_pool_name    = "ep-sailpointprodpool"
    }
}