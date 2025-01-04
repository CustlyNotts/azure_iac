subscription_id     = "3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4"
resource_group_name = "rg-ros-nonprod"
name                = "vm-ROSSelfhostedagent-WIN-nonprod"
os_simple           = "WindowsServer"
size                = "Standard_E2as_v4"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
  create               = "FromImage"
  name                 = "vm-ROSSelfhostedagent-WIN-nonprod_OsDisk_1_e5746930b88148a3b035db0341178e2a"
  disk_size_gb         = "127"
  type                 = "StandardSSD_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "Vnet-ROS-NonProd"
virtual_network_resource_group_name  = "rg-ros-nonprod"
subnet_name                          = "snet-ros-shared"
new_network_interface = {
  name                = "vm-rosselfhosteda690"
  resource_group_name = "rg-ros-nonprod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = ""
    }
  ]
}
disable_password_authentication = true
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [{
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "OsPatching" : "NonProd",
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "DEV"
}
