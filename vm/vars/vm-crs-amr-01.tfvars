subscription_id     = "1f5e2bb0-70cd-430f-9fde-ecd3b07a0769"
resource_group_name = "RG-CRS-AMR-PROD"
name                = "vm-crs-amr-01"
os_simple           = "WindowsServer"
size                = "Standard_E2s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
  create               = "FromImage"
  name                 = "vm-crs-amr-01_OsDisk_1_a835acaf26a04a258bf70bbc43292765"
  disk_size_gb         = "127"
  type                 = "StandardSSD_LRS"
}
boot_diagnostics_storage_account_uri = ""
virtual_network_name                 = "vnet-crs-amr-prod"
virtual_network_resource_group_name  = "rg-crs-amr-prod"
subnet_name                          = "snet-crs-amr-prod"
new_network_interface = {
  name                = "vm-crs-amr-01-nic"
  resource_group_name = "rg-crs-amr-prod"
  ip_configurations = [
    {
      name                          = "vm-crs-amr-01-nic0"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.154.24.4"
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

  "Application Name" : "CRS application Americas Region",
  "Application Owner" : "Moinudeen AliAzad",
  "ENV" : "PROD",
  "RITM" : "RITM0074474"

}
os_profile = {
  computer_name  = "vmcrsamr01"
  admin_username = "azureuser"
}


os_profile_windows_config = {
  enable_automatic_upgrades = true
  provision_vm_agent        = true
}