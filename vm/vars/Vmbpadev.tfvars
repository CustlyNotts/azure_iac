subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
resource_group_name = "rgbpadev"
name                = "Vmbpadev"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = ""
  create               = "FromImage"
  name                 = "Vmbpadev_OsDisk_1_425e6edb5ad245da9195167e83907901"
  disk_size_gb         = "127"
  type                 = "StandardSSD_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnetdpwglb"
virtual_network_resource_group_name  = "rgvnet"
subnet_name                          = "Dev"
new_network_interface = {
  enable_accelerated_networking = true
  name                          = "vmbpadev734"
  resource_group_name           = "Rgbpadev"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Static"
      private_ip_address            = ""
    }
  ]
}
disable_password_authentication  = true
delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name" : "Blue Prism",
  "Application Owner" : "Anjana Wijegunasinghe",
  "ENV" : "DEV",
  "Creator" : "Pavlo Azadmin",
  "Last Backup" : "02/15/2024, 09:05:13 PM"
}
os_profile = {
  computer_name  = "Vmbpadev"
  admin_username = "localadmin"
}

os_profile_windows_config = {
  enable_automatic_upgrades = false
  provision_vm_agent        = true
}
