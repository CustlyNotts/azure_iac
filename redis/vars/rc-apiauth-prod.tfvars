subscription_id     = <subscription_id>
name                            = "rc-apiauth-prod"
resource_group_name             = "rg-cargoesflow-prod"
capacity                        = 1
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = []
pe_resource_group_name          = []
subnet_id                       = []
private_service_connection_name = []
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = []
pdz_resource_group_name         = []
pdz_link_name                   = []
virtual_network_id              = []
linked_pdz_name                 = []
vlink_resource_group_name       = []
vlink_counter                   = 0
pe_counter                      = 0
pdz_counter                     = 0
custom_network_interface_name   = [""]