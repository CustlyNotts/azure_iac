subscription_id     = <subscription_id>
resource_group_name = "rg-mearundeck-prod"
name                = "vm-mearundeck-prod"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"

os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-mearundeck-prod_OsDisk_1_640965bd072f4b9a8acd09084d42b04e"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mearundeck-prod/providers/Microsoft.Compute/disks/vm-mearundeck-prod_OsDisk_1_640965bd072f4b9a8acd09084d42b04e"
}

virtual_network_name                = "vnet-mea-prod"
virtual_network_resource_group_name = "rg-mea-infra-prod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-mearundeck-prod819"
  resource_group_name            = "rg-mearundeck-prod"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.105.7"
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
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-mearundeck-prod"
  admin_username = "azureuser"
}

#boot_diagnostics = true
#boot_diagnostics_storage_account_uri = ""


tags = {

}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false