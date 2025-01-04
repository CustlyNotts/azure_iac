subscription_id     = <subscription_id>
resource_group_name = "Rg-Rostima-Prod"
name                = "pip-rosteringSchedulerFunctionEUProd"
location = "uksouth"
idle_timeout_in_minutes = 4
zones   = []
  tags = {
        "Application Name": "Rostima",
        "Application Owner": "Hasaan Malik",
        "ENV": "PROD"
    }