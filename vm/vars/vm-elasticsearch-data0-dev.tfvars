subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-dev"
name                = "vm-elasticsearch-data0-dev"
os_simple           = "Linux"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-elasticsearch-data0-dev_disk1_07c4de4119b74573bda37b1941e033cd"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-cargoesflow-dev"
virtual_network_resource_group_name  = "rg-cargoesflow-infra"
subnet_name                          = "snet-nonaks-dev"
new_network_interface = {
  name                = "vm-elasticsearch-103"
  resource_group_name = "rg-cargoesflow-dev"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.243.12.8"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Name"  = "Cargoes Flow",
  "Application Owner" = "Mostafa"
  "ENV"               = "DEV"
}

os_profile = {
  computer_name  = "vm-elasticsearch-data0-dev"
  admin_username = "azureuser"
}

os_profile_linux_config = {
  provision_vm_agent        = true
  disable_password_authentication = false
}
