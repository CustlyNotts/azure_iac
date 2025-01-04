subscription_id     = <subscription_id>
name                   = "dpw-uat-sql"
resource_group_name    = "rguatsitecore10"
mssql_version          = "12.0"
administrator_login    = "hiadmin"
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
  "Application Name" : "Sitecore",
  "Application Owner" : "DPW Team"
}