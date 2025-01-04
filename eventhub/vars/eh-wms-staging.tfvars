subscription_id     = <subscription_id>
name    ="eh-wms-staging"
resource_group_name = "rg-wms-nonprod"
sku                 = "Standard"
capacity            = 1
tags = {
        "Application Name": "Warehouse Management System",
        "Application Owner": "Sandeep Gupta",
        "ENV": "NonProd"
       }