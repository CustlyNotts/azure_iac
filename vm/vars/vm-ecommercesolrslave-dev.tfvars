subscription_id     = "039efcb8-56e2-459b-ad3c-68c086e8feb9"
resource_group_name = "RG-ECOMMERCESOLR-DEV"
name                = "vm-ecommercesolrslave-dev"
#os_simple           = ""
size     = "Standard_B2ms"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "Attach"
  name                 = "vmecommercesolrslavedev-osdisk-20230410-094551"
  disk_size_gb         = "64"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = false
virtual_network_name                 = "vnet-ecommerce-nonprod"
virtual_network_resource_group_name  = "rg-ecommerce-infra-nonprod"
subnet_name                          = "snet-ecommerce-dev"
new_network_interface = {
  name                = "vm-ecommercesol-nic-27b7954c29444d0ab4a40a4bc5d5f388"
  resource_group_name = "rg-ecommercesolr-dev"

  ip_configurations = [
    {
      name                          = "e16eb1f585e444e083908aa3a075aea3"
      primary_network_interface_id  = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommercesolr-dev/providers/Microsoft.Network/networkInterfaces/vm-ecommercesol-nic-27b7954c29444d0ab4a40a4bc5d5f388"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.165.84.16"
    }
  ]
}
disable_password_authentication = true
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name" : "Solr",
  "Application Owner" : "Shaloof/Kamlesh",
  "ENV" : "DEV"
}



delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false