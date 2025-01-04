subscription_id     = <subscription_id>
name = "global-nonprod"
resource_group_name = "rg-global-nonprod-WebPubSub"
sku = "Standard_S1"
capacity = 1
public_network_access_enabled = true
live_trace = {
    enabled = true
    messaging_logs_enabled = true
    connectivity_logs_enabled = true
    http_request_logs_enabled = true
}

identity = {
    type = "SystemAssigned"
    identity_ids = []
}