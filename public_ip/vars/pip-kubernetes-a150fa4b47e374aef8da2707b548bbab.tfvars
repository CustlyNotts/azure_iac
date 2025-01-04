subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod"
name                = "kubernetes-a150fa4b47e374aef8da2707b548bbab"
idle_timeout_in_minutes = 4
sku                     = "Standard"
zones =["1", "2", "3" ]
tags =  {
        "Application Name": "wlp Prod",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "RITM": "RITM00123",
        "k8s-azure-cluster-name": "kubernetes",
        "k8s-azure-service": "wlp-prod/sftp",
        "ENV": "PROD"
    }