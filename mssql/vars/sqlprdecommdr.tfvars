subscription_id     = <subscription_id>
name                   = "sqlprdecommdr"
resource_group_name    = "rg-ecommerce-prod-dr"
mssql_version          = "12.0"
administrator_login    = "sqlprdecomdradmin"
minimum_tls_version    = "Disabled"
administrator_password = "xxx"
azuread_administrator = [
  {
    azuread_authentication_only = false
    login_username              = "Kamlesh.Azadmin@dpwapps.com"
    object_id                   = "7d9b1a71-7029-4621-9acc-92509873201f"
  }
]
tags = {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Shaloof/vishank",
        "ENV": "PROD"
}