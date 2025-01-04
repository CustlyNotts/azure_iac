subscription_id     = <subscription_id>
resource_group_name = "rg-webpubsub-poc"   
name = "webpubsub-poc"
sku     = "Free_F1"
capacity    = 1
public_network_access_enabled   = true
live_trace_enabled  = false
live_trace_messaging_logs_enabled = true
live_trace_connectivity_logs_enabled = true

 tags  = {
        " ENV"              = "DEV"
        "Application Owner" = "Daniel Stuart / pradeesh raju"
}
