subscription_id     = <subscription_id>
name                            = "kv-cnsEncryption"
resource_group_name             = "Rg-Encryption-Prod"
sku_name                        = "standard"
purge_protection_enabled        = false
enable_rbac_authorization       = false
public_network_access_enabled   = true
subnet_id                       = []
virtual_network_id              = []
counter                         = 0
vlink_counter                   = 0
vlink_resource_group_name       = []
pdz_resource_group_name         = []
manual_connection               = false
private_endpoint_name           = []
private_service_connection_name = []
private_dns_zone_group_name     = []
private_dns_zone_ids            = []
linked_pdz_name                 = []
pdz_link_name                   = []
pdz_name                        = []
access_policies = [
  {
    object_id               = "861478fe-c35d-4d4e-abfd-99c1bccc2aec"
    key_permissions         = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "GetRotationPolicy", "SetRotationPolicy", "Rotate", "WrapKey", "UnwrapKey"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers"]
  },
  {
    object_id               = "e1ccc763-fb02-4213-964d-eb47788ba317"
    key_permissions         = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "GetRotationPolicy", "SetRotationPolicy", "Rotate", "WrapKey", "UnwrapKey"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers"]
  }
]