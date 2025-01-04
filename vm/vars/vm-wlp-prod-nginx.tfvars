subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod"
name                = "vm-wlp-prod-nginx"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_E2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-wlp-prod-nginx-osdisk"
  disk_size_gb         = "256"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Compute/disks/vm-wlp-prod-nginx-osdisk"
}

virtual_network_name                = "vnet-wlp-prod-uaenorth"
virtual_network_resource_group_name = "rg-wlp-prod"
subnet_name                         = "snet-wlp-prod-native-uaenorth"
new_network_interface = {
  name                           = "nic-wlp-prod-nginx"
  resource_group_name            = "rg-wlp-prod"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ip-wlp-prod-nginx"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.233.117.5"
    }
  ]
}


primary_network_interface_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/networkInterfaces/nic-wlp-prod-nginx"


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
  computer_name  = "vm-wlp-prod-nginx"
  admin_username = "azureuser"
}

boot_diagnostics                     = false
boot_diagnostics_storage_account_uri = ""


admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "WLP prod",
  "Application Owner" = "hussain.hashimi@dpworld.com"
  "env"               = "PROD"
  "Last Backup"       = "11/05/2023, 05:04:32 PM"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
