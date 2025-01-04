subscription_id     = <subscription_id>
resource_group_name = "rg-ems-dev"
name                = "vm-ems-dev"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_E2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnet-ems-nonprod"
virtual_network_resource_group_name = "rg-ems-dev"
subnet_name                         = "snet-ems-dev"
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
  "Application Owner" : "Sana Zoud",
  "ENV" : "DEV",
  "Application Name" : "Event Management System",
  "RITM" : "RITM0081871"
}