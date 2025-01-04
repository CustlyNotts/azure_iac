subscription_id     = <subscription_id>
resource_group_name = "rg-bt-prod"
name                = "vm-btprod-activemq"
os_simple           = "CentOS"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-btprod-activemq_OsDisk_1_247ee470c0bc44f8a54071e943f8f1f0"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
}

boot_diagnostics_storage_account_uri = "https://bootdiagdpwvm.blob.core.windows.net/"
boot_diagnostics                     = true
virtual_network_name                 = "vnet-btnwhub"
virtual_network_resource_group_name  = "rg-btnwhub"
subnet_name                          = "snet-bt-prod"
new_network_interface = {
  name                           = "vm-btprod-activemq15"
  resource_group_name            = "rg-bt-prod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.223.49.159"
    }
  ]
}

os_profile = {
  computer_name  = "vm-btprod-activemq"
  admin_username = "activemquser"
}

os_profile_linux_config = {
  disable_password_authentication = true
}

identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]


tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "PROD"
}
