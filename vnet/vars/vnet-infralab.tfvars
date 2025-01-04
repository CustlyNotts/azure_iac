subscription_id     = <subscription_id>
resource_group_name = "rg-infralab-network"
sechub_enabled      = true
route_default       = true
name                = "vnet-infralab"
use_ipam            = false
address_space       = ["10.88.0.0/16"]
subnets = [
  {
    name             = "snet-infralab-default"
    address_prefixes = ["10.88.0.0/24"]
    ######## Additional Route rules if sechub and route_default is set to true along with default route rules##########
    routes = {
      "route-to-onprem" = {
        address_prefix         = "192.168.0.0/16"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.0.0.4"
      }
    }
    ####### Additional Nsg Rules if sechub is set to true along with default rules ########
    nsg_rules = {
      "CustomAllowHttp" = {
        description                = "Allow HTTP traffic"
        priority                   = 350
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "Internet"
      }
    }
   ########If route_default is false for (old vnet ) still you can refer with route_table_id########
   #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
   #######If sechub_enabled is false then nsg id also you can add"
   #network_security_group_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-native-wlp"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.




tags = {
  "Application Owner" : "Global Infra Lab",
  "ENV" : "LAB",
  "Application Name" : "Global Infra",
  "Owner" : "Velazadmin"
  "RITM" : "RITM0000000",
  "X-IPAM-RES-ID" : "3xCj5RBiVNsLXh5YnLKhud"
}
