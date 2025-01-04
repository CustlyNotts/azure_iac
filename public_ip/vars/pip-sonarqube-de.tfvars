subscription_id     = <subscription_id>
resource_group_name = "rg-sonarqube-de"
name                = "pip-sonarqube-de"
domain_name_label       = "sonarqubede"
sku                     = "Basic"
allocation_method       = "Dynamic"
location                = "eastus2"
idle_timeout_in_minutes = 4
zones =[]
tags = {
        "name": "sonarqubede",
        "Application Name": "SONARQUBE de",
        "Application Owner": "Daniel Stuart / pradeesh raju",
        "ENV": "DEV"
    }