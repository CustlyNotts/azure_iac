subscription_id     = <subscription_id>
resource_group_name = "rg-BlockchainUAEstaging"
name                = "pip-cblockchain-nonprod"
sku                     = "Basic"
allocation_method       = "Dynamic"
idle_timeout_in_minutes = 4
zones =[]
tags =  {
        "Application Name": "Datachain",
        "Application Owner": "Jay Li / Jayakrishna Alwar",
        "ENV": "Non-Prod"
}