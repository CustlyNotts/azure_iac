subscription_id     = <subscription_id>
resource_group_name = "RG-LCIT-STAGING"
name                = "VM-LCIT-BUILD"
#os_simple           = "CentOS"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-lcit-build_OsDisk_1_ccf19ced3fd9480eb6230cff41af4400"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/RG-LCIT-STAGING/providers/Microsoft.Compute/disks/vm-lcit-build_OsDisk_1_ccf19ced3fd9480eb6230cff41af4400"
}

virtual_network_name                = "vnet-lcit-nonprod"
virtual_network_resource_group_name = "rg-lcit-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-lcit-build78"
  resource_group_name            = "rg-lcit-staging"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.9.4"
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
  publisher = "procomputers"
  offer     = "centos-8"
  sku       = "centos-8"
  version   = "latest"
}

plan = {
  name      = "centos-8"
  product   = "centos-8"
  publisher = "procomputers"
}

os_profile = {
  computer_name  = "vm-lcit-build"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "LCIT",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "STAGING"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
