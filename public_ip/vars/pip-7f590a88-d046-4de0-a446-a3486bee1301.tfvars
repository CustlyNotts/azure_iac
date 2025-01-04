subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod-dr"
name                = "7f590a88-d046-4de0-a446-a3486bee1301"
zones   = []
tags = {
        "Application Name": "DR Setup",
        "Application Owner": "Nihil Babu",
        "ENV": "DR",
        "RITM": "RITM0012345",
        "aks-managed-cluster-name": "aks-wlp-prod-dr",
        "aks-managed-cluster-rg": "rg-wlp-prod-dr",
        "owner": "kubernetes",
        "type": "aks-slb-managed-outbound-ip"
    }