subscription_id     = <subscription_id>
resource_group_name = "RG-CARGOESCANADAHUB-BUILD"
name                = "VM-CARGOESCANADA-BUILD"
os_simple           = "CentOS"
size                = "Standard_B4ms"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-cargoescanada-build_OsDisk_1_ad8ca92a349d4664b69bb5562beadd0d"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Compute/disks/vm-cargoescanada-build_OsDisk_1_ad8ca92a349d4664b69bb5562beadd0d"
}

virtual_network_name                = "vnet-cargoescanada-build"
virtual_network_resource_group_name = "rg-cargoescanadahub-build"
subnet_name                         = "snet-mgmt"
new_network_interface = {
  name                           = "vm-cargoescanada-bui295"
  resource_group_name            = "rg-cargoescanadahub-build"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.210.0.20"
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
  publisher = "cognosys"
  offer     = "centos-76-lts-free"
  sku       = "centos-76-free"
  version   = "latest"
}

plan = {
  name      = "centos-76-free"
  product   = "centos-76-lts-free"
  publisher = "cognosys"
}

os_profile = {
  computer_name  = "vm-cargoescanada-build"
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
  "Application Name"  = "Cargoes Canada ",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false