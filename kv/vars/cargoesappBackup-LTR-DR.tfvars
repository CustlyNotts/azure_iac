subscription_id     = <subscription_id>
name                            = "cargoesappBackup-LTR-DR"
resource_group_name             = "rg-ltr-prod"
sku_name                        = "standard"
location                        = "ukwest"
purge_protection_enabled        = false
enable_rbac_authorization       = false
public_network_access_enabled   = true
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
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
    object_id               = "7e1de330-9191-4f7d-87a0-a1f286e35c33"
    key_permissions         = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "GetRotationPolicy", "SetRotationPolicy", "Rotate"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
  },
  {
    object_id          = "bd3d3dab-068e-47ed-a624-e9b81cf30224"
    secret_permissions = ["Get", "List"]
  },
  {
    object_id          = "54124170-9cab-4458-b413-f04c8b9da3c1"
    secret_permissions = ["Get", "List"]
  },
  {
    object_id          = "4d8041f8-41e6-4032-87d7-22b3a750cbbd"
    secret_permissions = ["Get", "List"]
  }
]