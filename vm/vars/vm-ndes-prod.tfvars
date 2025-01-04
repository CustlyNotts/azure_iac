subscription_id     = <subscription_id>
resource_group_name = "rg-adca-prod"
name                = "vm-ndes-prod"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "ndes-datadisk1"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 256
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
virtual_network_name                = "vnet-adca-prod"
virtual_network_resource_group_name = "rg-adca-prod"
subnet_name                         = "snet-adca-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.29"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

extensions = [
  {
    name                 = "customScript"
    publisher            = "Microsoft.Compute"
    type                 = "CustomScriptExtension"
    type_handler_version = "1.9"

    protected_settings = <<SETTINGS
  {    
    "commandToExecute": "powershell.exe -ExecutionPolicy Bypass -Command Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://strgavdaib.blob.core.windows.net/meagentforwindows/we-windows.ps1'))"
  }
  SETTINGS
  }
]
tags = {
  "Application Owner" : "Blaise Thomas",
  "ENV" : "PROD",
  "Application Name" : "Active Directory Certificate Authority",
  "RITM" : "RITM0117133"
}