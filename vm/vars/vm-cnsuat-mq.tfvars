subscription_id     = <subscription_id>
resource_group_name = "RG-CNSUAT"
name                = "vm-cnsuat-mq"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_B2ms"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-cnsuat-mq_OsDisk_1_fc605847b6b44492aacd4b6cb15e8ace"
  disk_size_gb         = "256"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-CNSUAT/providers/Microsoft.Compute/disks/vm-cnsuat-mq_OsDisk_1_fc605847b6b44492aacd4b6cb15e8ace"
}

virtual_network_name                = "CNSNetwork"
virtual_network_resource_group_name = "cnsnw"
subnet_name                         = "UAT1"
new_network_interface = {
  name                           = "vm-cnsuat-mq924"
  resource_group_name            = "rg-cnsuat"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.35.15"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = true
}

identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "OpenLogic"
  offer     = "CentOS"
  sku       = "8_2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-cnsuat-mq"
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
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "UAT"
  "scheduler"         = "off=(M-F,22);on=(M-F,8);tz=Asia/Dubai"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false