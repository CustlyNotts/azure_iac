subscription_id     = <subscription_id>
name                            = "kv-cnskeyvalut"
resource_group_name             = "cnsnw"
sku_name                        = "standard"
purge_protection_enabled        = false
enable_rbac_authorization       = false
enabled_for_deployment          = false
enabled_for_template_deployment = false
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
    object_id               = "ffdbb16b-4e5c-450a-a6cc-2429f0c910b9"
    key_permissions         = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers"]
  },
  {
    object_id               = "cf8fbf7e-cee9-4d10-81ca-4b68d196cc95"
    key_permissions         = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers"]
  },
  {
    object_id               = "33170d86-8a33-44f9-8071-0e4b6513af25"
    key_permissions         = ["Get", "Create", "Delete", "List", "Update", "Import", "Backup", "Restore", "Recover"]
    secret_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore"]
    certificate_permissions = ["Get", "List", "Delete", "Create", "Import", "Update", "ManageContacts", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "ManageIssuers", "Recover"]
    storage_permissions     = ["Get", "List", "Delete", "Set", "Update", "RegenerateKey", "SetSAS", "ListSAS", "GetSAS", "DeleteSAS"]
  },
  {
    object_id          = "96d5bf53-94d1-4be1-a9e4-0a58c3aa848a"
    key_permissions    = ["Get", "List", "Backup"]
    secret_permissions = ["Get", "List", "Backup"]
  },
  {
    object_id          = "4d8041f8-41e6-4032-87d7-22b3a750cbbd"
    secret_permissions = ["Get", "List"]
  },
  {
    object_id          = "bd3d3dab-068e-47ed-a624-e9b81cf30224"
    secret_permissions = ["Get", "List"]
  }
]
tags = {
  "Application Name"  = "Mawani CNS",
  "Application Owner" = "Daniel/Sachin",
  "ENV"               = "PROD",
}