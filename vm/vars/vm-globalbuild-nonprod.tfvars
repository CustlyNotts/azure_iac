subscription_id     = <subscription_id>
resource_group_name = "rg-global-test"
name                = "vm-globalbuild-nonprod"
os_simple           = "CentOs"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-globalbuild-nonprod_OsDisk_1_ed4a1d8489b04e78ab79ddac49887978"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-test/providers/Microsoft.Compute/disks/vm-globalbuild-nonprod_OsDisk_1_ed4a1d8489b04e78ab79ddac49887978"
}

virtual_network_name                = "vnet-global-nonprod"
virtual_network_resource_group_name = "rg-global-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-globalbuild-no231"
  resource_group_name            = "rg-global-test"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.169.4"
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
  publisher = "OpenLogic"
  offer     = "CentOS"
  sku       = "7_9-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-globalbuild-nonprod"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "global",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "TESTING"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false