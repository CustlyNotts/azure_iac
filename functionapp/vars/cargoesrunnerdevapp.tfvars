subscription_id     = <subscription_id>
service_plan_name                                = "servicePlan"
os_type                                          = "Windows"
sku_name                                         = "Y1"
function_app_name                                = "cargoesrunnerdevapp"
resource_group_name                              = "rg-resourcemove"
storage_account_name                             = "cargoesrunnerdevstorage"
storage_account_kind                             = "Storage"
storage_account_cross_tenant_replication_enabled = false
https_only                                       = false
builtin_logging_enabled                          = false
client_certificate_mode                          = "Optional"
identity_enabled                                 = off
identity_type                                    = "SystemAssigned"