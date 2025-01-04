subscription_id     = <subscription_id>
resource_group_name = "rg-perftest"
name                = "vm-pt-lg"
os_simple           = ""
size                = "Standard_F4s_v2"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "pt-lg_OsDisk_1_1c4eca92523d419da1b7faeb1236c689"
  disk_size_gb         = "64"
  type                 = "StandardSSD_LRS"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-bthub"
virtual_network_resource_group_name  = "rg-btprihubnw"
subnet_name                          = "snet-perftest"
new_network_interface = {
  name                           = "vm-pt-lg479"
  resource_group_name            = "rg-perftest"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.33.49"
    }
  ]
}

subnet_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/UAT1"
nic_location = "uksouth"

identity = {
  type = "SystemAssigned"
}


tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "TESTING"
}

