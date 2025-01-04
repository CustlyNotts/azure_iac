subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-stage"
name                = "kubernetes-a88833fb4f2ca4ef2958ee9071d7b14f"
idle_timeout_in_minutes = 4
zones =[]
tags = {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "STAGING",
        "RITM": "RITM00123",
        "k8s-azure-cluster-name": "kubernetes",
        "k8s-azure-service": "wlp-stage/sftp"
    }