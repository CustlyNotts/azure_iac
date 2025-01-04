subscription_id     = <subscription_id>
resource_group_name     = "rg-wlp-shared-dev"
name                    = "kubernetes-a47e5a6706b2942ee904bd7fcbc8e4a4"
zones =["1", "2", "3" ]
idle_timeout_in_minutes = 4
tags = {
        "Application Name": "WLP Dev",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "RITM": "RITM00123",
        "k8s-azure-cluster-name": "kubernetes",
        "k8s-azure-service": "wlp-dev/sftp-test",
        "ENV": "DEV"
    }