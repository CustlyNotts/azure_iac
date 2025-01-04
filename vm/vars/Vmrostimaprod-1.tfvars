subscription_id     = "1f5e2bb0-70cd-430f-9fde-ecd3b07a0769"
resource_group_name = "rg-rostima-prod"
name                = "Vmrostimaprod-1"
os_simple           = ""
size                = "Standard_E4s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "Attach"
  name                 = "Vmrostimaprod-1_OsDisk_1_a87592005e0b4e5f9cf968dfd0a47104"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "Vnet-Rostima"
virtual_network_resource_group_name  = "Rg-Vnet"
subnet_name                          = "Snet_Rostima_Prod"
new_network_interface = {
  name                = "vmrostimaprod-1917"
  resource_group_name = "Rg-Rostima-Prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.154.4.7"
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
  "Application Name" : "Rostima",
  "Application Owner" : "Hasaan Malik",
  "ENV" : "PROD",
  "Last Backup" : "02/01/2024, 05:15:05 PM"
}
