subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescanada-preprod"
name                = "vm-canadapreprod-activemq"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-canadapreprod-activemq_OsDisk_1_09ea73855a0745508aad048c9499c0ee"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/RG-CARGOESCANADA-PREPROD/providers/Microsoft.Compute/disks/vm-canadapreprod-activemq_OsDisk_1_09ea73855a0745508aad048c9499c0ee"
}

virtual_network_name                = "vnet-cargoescanada-preprod"
virtual_network_resource_group_name = "rg-cargoescanada-preprod"
subnet_name                         = "snet-cargoescanada-preprod"
new_network_interface = {
  name                           = "vm-canadapreprod-act564"
  resource_group_name            = "rg-cargoescanada-preprod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.212.0.38"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = false
}

identity = {
  type = "SystemAssigned"
}

source_image_reference = {
  publisher = "OpenLogic"
  offer     = "CentOS"
  sku       = "7_9-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-canadapreprod-activemq"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""


admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "Mawani CNS",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "PREPROD"
  "Last Backup"       = "08/10/2023, 09:05:54 PM"
  "scheduler"         = "off=(M-S,8);on=(M-F,19);tz=Asia/Dubai"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
