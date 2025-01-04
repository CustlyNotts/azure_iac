subscription_id     = <subscription_id>
resource_group_name = "RG-GLOBALNONPROD-RUNDECK"
name                = "vm-globalnonprod-rundeck"
#admin_username      = "adminuser"
image_os                     = "linux"
os_simple                    = "UbuntuServer"
size                         = "Standard_D2s_v3"
vmimport                     = "enabled"
primary_network_interface_id = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-globalnonprod-rundeck/providers/Microsoft.Network/networkInterfaces/vm-globalnonprod-rundeck-nic"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-globalnonprod-rundeck_OsDisk_1_c2fefa0721e543e3a822692abf0873de"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/RG-GLOBALNONPROD-RUNDECK/providers/Microsoft.Compute/disks/vm-globalnonprod-rundeck_OsDisk_1_c2fefa0721e543e3a822692abf0873de"
}

virtual_network_name                = "vnet-global-nonprod"
virtual_network_resource_group_name = "rg-global-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-globalnonprod-rundeck-nic"
  resource_group_name            = "rg-globalnonprod-rundeck"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "vm-globalnonprod-rundeck-ipconfig"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.170.169.12"
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
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-globalnonprod-rundeck"
  admin_username = "adminuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "CCS",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV"               = "UAT"
  "scheduler"         = "off=(S,1);on=(M,8);tz=Asia/Dubai"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
