subscription_id     = <subscription_id>
resource_group_name = "RG-BTSTAGING-AKS"
name                = "vm-btpreprod-activemq"
os_simple           = "CentOS"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-btpreprod-activemq_OsDisk_1_ea550097d3154c7398e6ba53e17e5aee"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
}

computer_name                        = "vm-btpreprod-activemq"
admin_username                       = "azureuser"
boot_diagnostics_storage_account_uri = "https://bootdiagdpwvm.blob.core.windows.net/"
boot_diagnostics                     = true
virtual_network_name                 = "vnet-btnwhub"
virtual_network_resource_group_name  = "rg-btnwhub"
subnet_name                          = "snet-btstaging"
new_network_interface = {
  name                           = "vm-btpreprod-activem199"
  resource_group_name            = "rg-btstaging-aks"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.223.34.108"
    }
  ]
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

os_profile = {
  computer_name  = "vm-btpreprod-activemq"
  admin_username = "azureuser"
}


tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "DEV"
  "scheduler"         = "off=(M-F,21);on=(M-F,8);tz=Asia/Dubai"
}
