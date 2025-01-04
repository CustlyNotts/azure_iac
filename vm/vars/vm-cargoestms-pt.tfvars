subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestmsperfomancetesting"
location            = "southafricanorth"
name                = "vm-cargoestms-pt"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoestms-performancetesting"
virtual_network_resource_group_name = "rg-cargoestmsperfomancetesting"
subnet_name                         = "snet-compute-performancetesting"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.16.13"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
##
#tags = {
#  "Application Name"  = "Cargoes Runner,
# "Application Owner" = "Ritesh/AbhishekJain1",
#"ENV"               = "TESTING"
#"scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
#}