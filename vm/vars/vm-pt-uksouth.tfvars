subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesperformancetestuk"
location            = "uksouth"
name                = "vm-pt-uksouth"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard D2s v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-qatools-uksouth"
virtual_network_resource_group_name = "rg-cargoesperformancetestuk"
subnet_name                         = "snet-qatools-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.96.0.133"
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