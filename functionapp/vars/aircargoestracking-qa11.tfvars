subscription_id     = <subscription_id>
service_plan_name                                = "asp-aircargoestracking-dev"
os_type                                          = "Linux"
sku_name                                         = "B2"
function_app_name                                = "aircargoestracking-qa11"
resource_group_name                              = "rg-trackingservice-dev"
storage_account_name                             = "strgtrackingservicefndev"
storage_account_kind                             = "Storage"
storage_account_cross_tenant_replication_enabled = false
https_only                                       = true
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
virtual_network_subnet_id                        = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-aircargoestracking-dev"
identity_enabled                                 = true
identity_type                                    = "SystemAssigned"
tags = {
    "ENV": "DEV"
    "Application Name": "Tracking Service"
    "Application Owner" : "Mohit Lal"
    "RITM": "RITM000X00"
}

