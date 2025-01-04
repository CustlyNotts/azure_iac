subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-dev"
name                = "vm-wlp-dev-nginx"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_F4s_v2"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-pt-lg_OsDisk_1_97b45be28fb6449bb1b2377c09efbb7f"
  disk_size_gb         = "64"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/RG-PERFTEST/providers/Microsoft.Compute/disks/vm-pt-lg_OsDisk_1_97b45be28fb6449bb1b2377c09efbb7f"
}

virtual_network_name                = "Vnet-DTWorld"
virtual_network_resource_group_name = "Rg-Vnet"
subnet_name                         = "snet-perftest"
new_network_interface = {
  name                           = "vm-pt-lg931"
  resource_group_name            = "rg-perftest"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.156.9.5"
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
  sku       = "8_4-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-pt-lg"
  admin_username = "Azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""


admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "perftest"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "TESTING"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
