subscription_id     = <subscription_id>
resource_group_name = "rg-cns-dev"
name                = "vm-cnsdevops"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "os-vmcnsdevop"
  disk_size_gb         = "256"
  type                 = "StandardSSD_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-CNS-DEV/providers/Microsoft.Compute/disks/os-vmcnsdevop"
}

virtual_network_name                = "CNSNetwork"
virtual_network_resource_group_name = "cnsnw"
subnet_name                         = "snet-cns-ep"
new_network_interface = {
  name                = "vm-cnsdevops714"
  resource_group_name = "rg-cns-dev"
  #accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.136.21"
    }
  ]
}

identity = {
  type = "SystemAssigned"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name" : "Mawani",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
