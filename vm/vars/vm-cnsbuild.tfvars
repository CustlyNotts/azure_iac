subscription_id     = <subscription_id>
resource_group_name = "rg-cnsbuild"
name                = "Vm-cnsbuild"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "Vm-cnsbuild_OsDisk_1_ec7089d44fcd43de95c35771b273543e"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "StandardSSD_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-CNSBUILD/providers/Microsoft.Compute/disks/Vm-cnsbuild_OsDisk_1_ec7089d44fcd43de95c35771b273543e"
}

virtual_network_name                = "CNSNetwork"
virtual_network_resource_group_name = "cnsnw"
subnet_name                         = "Test"
new_network_interface = {
  name                           = "vm-cnsbuild415"
  resource_group_name            = "Rg-Cnsbuild"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Static"
      private_ip_address            = "172.22.2.52"
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
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

os_profile = {
  computer_name  = "Vm-cnsbuild"
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
  "ENV"               = "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
