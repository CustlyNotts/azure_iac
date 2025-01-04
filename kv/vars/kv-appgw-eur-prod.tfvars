subscription_id     = <subscription_id>
name                            = "kv-appgw-eur-prod"
resource_group_name             = "rg-appgw-eur-prod"
sku_name                        = "standard"
counter                         = 0
vlink_counter                   = 0
subnet_id                       = []
virtual_network_id              = []
vlink_resource_group_name       = [""]
pdz_resource_group_name         = [""]
manual_connection               = false
private_endpoint_name           = []
private_service_connection_name = []
private_dns_zone_group_name     = []
private_dns_zone_ids            = []
linked_pdz_name                 = []
pdz_link_name                   = []
pdz_name                        = []

enable_rbac_authorization       = false 
enabled_for_deployment          = false 
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
public_network_access_enabled   = true
purge_protection_enabled        = true


tags =  {
        "Application Name": "CRS EUR App Gateway",
        "Application Owner": "Hassan Malik",
        "ENV": "PROD"
        
}