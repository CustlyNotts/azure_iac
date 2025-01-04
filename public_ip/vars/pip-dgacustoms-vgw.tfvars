subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp"
name                = "pip-dgacustoms-vgw"
sku                     = "Basic"
allocation_method       = "Dynamic"
idle_timeout_in_minutes = 4
zones =[]
tags =  {
        "Application Name": "DGA customs ",
        "Application Owner": "Hussain ",
        "ENV": "DEV"
    }