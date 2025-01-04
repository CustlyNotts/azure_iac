subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-app"
name                = "vm-cargoes-app-dev01-ip"
sku                     = "Basic"
allocation_method       = "Dynamic"
idle_timeout_in_minutes = 4
zones =[]
tags =  {
        "Application Name": "Cargoes app",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV"
    }