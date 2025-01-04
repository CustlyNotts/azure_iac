subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod-dr"
name                = "pip-appgw-wlp-prod-dr"
idle_timeout_in_minutes = 4
zones =[]
tags  = {
        "Application Name": "DR Setup",
        "Application Owner": "Nihil Babu",
        "ENV": "PROD"
    }