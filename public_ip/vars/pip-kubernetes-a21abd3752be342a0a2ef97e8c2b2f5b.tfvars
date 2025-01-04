subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-stage"
name                = "kubernetes-a21abd3752be342a0a2ef97e8c2b2f5b"
idle_timeout_in_minutes = 4
zones =["1", "2", "3" ]
tags = {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "STAGING",
        "RITM": "RITM00123",
        "k8s-azure-cluster-name": "kubernetes",
        "k8s-azure-service": "kong/kong-proxy"
    }