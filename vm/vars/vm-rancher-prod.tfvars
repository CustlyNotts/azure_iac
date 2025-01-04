subscription_id     = <subscription_id>
resource_group_name = "rg-infrateam"
name                = "rancher-infrateam"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B4ms"
os_disk = {
  caching              = "ReadWrite"
  disk_size_gb         = 50
  storage_account_type = "Standard_LRS"
}

data_disks = [
  {
    name                 = "data"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 100
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]


virtual_network_name                = "VnetWVDall"
virtual_network_resource_group_name = "rg-wvd-global"
subnet_name                         = "wvd-sub1"
new_network_interface = {
  ip_configurations = [
    {
      name                          = "vm-rancher-ip"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.237.1.123"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]


tags = {
  "Application Name"  = "InfraTeam",
  "Application Owner" = "Velmurugan / Shaloof Moopan",
  "ENV"               = "PROD"
}
