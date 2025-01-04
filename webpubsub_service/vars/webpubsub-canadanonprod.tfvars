subscription_id     = <subscription_id>
resource_group_name = "rg-canadanonprod-webpubsub"   
name = "webpubsub-canadanonprod"
sku     = "Standard_S1"
capacity    = 1
public_network_access_enabled   = true
live_trace_enabled  = false
live_trace_messaging_logs_enabled = true
live_trace_connectivity_logs_enabled = true

 tags  = {
        "ENV"              = "nonprod-WebPubSub"
        "Application Owner" = "Daniel Stuart"
        "Application Name" = "CCS-Canada"
}
