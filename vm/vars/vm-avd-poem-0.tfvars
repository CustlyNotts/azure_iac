subscription_id     = "1f5e2bb0-70cd-430f-9fde-ecd3b07a0769"
resource_group_name = "rg-avd-poems"
name                = "vm-avd-poem-0"
location            = "uaenorth"
os_simple           = "office-365"
size                = "Standard_D4s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "FromImage"
  name                 = "vm-avd-poem-0_OsDisk_1_6df0f6e07c284de18da8597a86266e6c"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-wvd-poems"
virtual_network_resource_group_name  = "rg-wvd-poems"
subnet_name                          = "snet-wvd-poems"
new_network_interface = {
  name                = "vm-avd-poem-0-nic"
  resource_group_name = "rg-avd-poems"
  ip_configurations = [
    {
      name                          = "ipconfig"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.237.8.5"
    }
  ]
}

subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-wvd-poems/providers/Microsoft.Network/virtualNetworks/vnet-wvd-poems/subnets/snet-wvd-poems"
nic_location                    = "UAE North"
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
  "ENV" : "PROD",
  "Application Name" : "Poems WVD",
  "Application Owner" : "Moinudeen AliAzad",
  "RITM" : "RITM0056062",
  "cm-resource-parent" : "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-avd-poems/providers/Microsoft.DesktopVirtualization/hostpools/HP-AVD-Poems"
}


os_profile = {
  computer_name  = "vm-avd-poem-0"
  admin_username = "azureuser"
}

os_profile_windows_config = {
  enable_automatic_upgrades = true
  provision_vm_agent        = true
}


 