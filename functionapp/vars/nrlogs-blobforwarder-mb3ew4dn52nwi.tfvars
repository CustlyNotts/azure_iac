subscription_id     = <subscription_id>
service_plan_name                                = "UAENorthPlan"
os_type                                          = "Windows"
sku_name                                         = "Y1"
location                                         = "UAE North "
function_app_name                                = "nrlogs-blobforwarder-mb3ew4dn52nwi"
resource_group_name                              = "rg-sendgrid-events"
storage_account_name                             = "stsendgridevents"
storage_account_resource_group_name              = "rg-sendgrid-events"
storage_account_kind                             = "StorageV2"
storage_account_cross_tenant_replication_enabled = true
https_only                                       = false
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
#virtual_network_subnet_id                        = "null"
identity_enabled                                 = true
identity_type                                    = "SystemAssigned"
functions_extension_version                    = "~3"
public_network_access_enabled     = true
min_tls_version                   = "TLS1_0"
