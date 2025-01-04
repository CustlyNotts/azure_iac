subscription_id     = <subscription_id>
name                            = "dpw-foundational-services-staging-dr"
resource_group_name             = "cargoes-staging-dr"
capacity                        = 1
family                          = "P"
sku                             = "Premium"
enable_non_ssl_port             = true
custom_network_interface_name   = [""]
tags = {
  "Application Name"  = "Cargoes Platform staging dr",
  "Application Owner" = "Jay Li / Jayakrishna Alwar",
  "ENV"               = "STAGING-DR"
}
