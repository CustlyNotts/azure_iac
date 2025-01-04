subscription_id     = "039efcb8-56e2-459b-ad3c-68c086e8feb9"
resource_group_name = "rg-ecommerce-infra-nonprod"
name                = "wvd-ecom-0"
os_simple           = "Windows-10"
size                = "Standard_D2s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_SSD"
  create               = "FromImage"
  name                 = "wvd-ecom-0_OsDisk_1_fdc408de32db484eb5b13fd564ea3f1b"
  disk_size_gb         = "127"

}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-ecommerce-nonprod"
virtual_network_resource_group_name  = "rg-ecommerce-infra-nonprod"
subnet_name                          = "snet-ecommerce-avd"
new_network_interface = {
  name                = "wvd-ecom-0-nic"
  resource_group_name = "rg-ecommerce-infra-nonprod"
  ip_configurations = [
    {
      name                          = "ipconfig"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.165.89.4"
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
  "cm-resource-parent" : "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.DesktopVirtualization/hp-ecommerce",
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Shaloof/Kamlesh",
  "ENV" : "DEV",
  "TeamsChannel" : "Ecommerce_autoShutdown VM"
}

os_profile = {
  computer_name  = "wvd-ecom-0"
  admin_username = "azureuser"
}

os_profile_windows_config = {
  enable_automatic_upgrades = true
  provision_vm_agent        = true
}

storage_image_reference = {
  offer     = "Windows-10"
  publisher = "MicrosoftWindowsDesktop"
  sku       = "20h2-evd"
  version   = "latest"
}
