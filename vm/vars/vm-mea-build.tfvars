subscription_id     = <subscription_id>
resource_group_name = "rg-mea-test"
name                = "vm-mea-build"
os_simple           = "CentOS"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-mea-build_OsDisk_1_afab716f71804afcb526edfa66228cf3"
  disk_size_gb         = "64"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/RG-MEA-TEST/providers/Microsoft.Compute/disks/vm-mea-build_OsDisk_1_afab716f71804afcb526edfa66228cf3"
}

virtual_network_name                = "vnet-mea-nonprod"
virtual_network_resource_group_name = "rg-mea-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-mea-build792"
  resource_group_name            = "rg-mea-test"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.73.4"
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
  computer_name  = "vm-mea-build"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "mea",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "TESTING"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
