subscription_id     = <subscription_id>
service_plan_name                                = "asp-trackingservice-nonprod"
os_type                                          = "Linux"
sku_name                                         = "B3"
function_app_name                                = "fn-logistics-staging"
resource_group_name                              = "rg-trackingservice-dev"
storage_account_name                             = "strgtrackingservicefndev"
storage_account_resource_group_name              = "rg-trackingservice-dev"
storage_account_kind                             = "StorageV2"
https_only                                       = true
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
virtual_network_subnet_id                        = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-functionapp-dev"
identity_enabled                                 = false
identity_type                                    = "SystemAssigned"
node_version                                     = "18"
storage_account_cross_tenant_replication_enabled = true
storage_account_replication_type                 = "RAGRS"
public_network_access_enabled                    = true
  tags                                           = {
            "Application Name"  = "Tracking Service"
            "Application Owner" = "Jay Li/ Bittu Lal"
            "ENV"               = "DEV"
        }