subscription_id     = <subscription_id>
service_plan_name                                = "ASP-rgsendgridevents-88cf"
os_type                                          = "Linux"
sku_name                                         = "Y1"
location                                         = "centralus"
function_app_name                                = "sendgrig-to-eventhub"
resource_group_name                              = "rg-sendgrid-events"
storage_account_name                             = "storageaccountrgsen9e8f"
storage_account_resource_group_name              = "rg-sendgrid-events"
storage_account_kind                             = "Storage"
storage_account_cross_tenant_replication_enabled = true
https_only                                       = true
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
#virtual_network_subnet_id                       = "null"
identity_enabled                                 = true
identity_type                                    = "SystemAssigned"
public_network_access_enabled                    = true
