subscription_id     = "039efcb8-56e2-459b-ad3c-68c086e8feb9"
resource_group_name = "rg-ecommercesolr-prod"
name                = "vmecommprodsolrslave-0"
#os_simple           = ""
size     = "Standard_E4s_v3"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "FromImage"
  name                 = "vmecommprodsolrslave-0_OsDisk_1_86db5975fb3349a2856ea2abc884e65b"
  disk_size_gb         = "64"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-ecommerce-prod"
virtual_network_resource_group_name  = "rg-ecommerce-infra-prod"
subnet_name                          = "snet-ecommerce-prod"
new_network_interface = {
  name                = "vmecommprodsolrsl450"
  resource_group_name = "rg-ecommercesolr-prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.165.106.24"
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
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD",
  "Last Backup" : "01/16/2024, 05:11:32 PM"
}
