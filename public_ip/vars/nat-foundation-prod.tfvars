subscription_id     = <subscription_id>
resource_group_name = "cargoes-prod"
name                = "nat-foundation-prod"
sku                     = "Basic"
allocation_method       = "Dynamic"
idle_timeout_in_minutes = 4
zones =[]
tags =  {
        "Application Name": "Flow/datachain/logistics",
        "Application Owner": "Ravi/Mostafa/Jaya",
        "ENV": "PROD"
}