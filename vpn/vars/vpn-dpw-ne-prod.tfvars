subscription_id     = <subscription_id>
resource_group_name = "rgprdsitecore10"
location            = "northeurope"
##Virtual_network_gateway
name                 = "dpw-ne-prod-vng2"
virtual_network_name = "dpw-ne-prod-vnet"
subnet               = "GatewaySubnet"
sku                  = "VpnGw1AZ"
type                 = "Vpn"
active_active        = false
enable_bgp           = false
vpn_type             = "RouteBased"
ip_configuration = {
  name                          = "default"
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id          = "dpw-ne-prod-vng2-pip" ##This attribute ID value takes from data source locals - shoule not be empty (name is preferred)
  subnet_id                     = "GatewaySubnet"        ##This attribute ID value takes from data source locals - should not be empty (name is preferred)
}
tags = {
  "env" : "PROD",
  "Application Name" : "Sitecore",
  "Application Owner" : "DPW Team"
}
bgp_settings = {
  asn = "65515"
  peering_addresses = {
    ip_configuration_name = "default"
  }
  peer_weight = 0
}



##Virtual_network_gateway_connection - multiple connection you can add key value blocks  - number of connection == number of localgateway 
connection_list = {
  dpw-ne-prod-vpn = { # this name should be same in connnection and localgateway
    connection_name       = "dpw-ne-prod-vpn-test2"
    connection_type       = "IPsec"
    connection_protocol   = "IKEv1"
    shared_key            = "f6fxIBKwLUT4Gh2IJXX7"
    connection_enable_bgp = false
    routing_weight        = 0
  }
}



##Virtual_network_local_gateway_map - multiple localgateway you can add key value blocks - number of localgateway == number of connection
local_gateway_connections = {
  dpw-ne-prod-vpn = { # this name should be same in connetions and localgateway
    localgateway_name = "dpw-ne-prod-lng2"
    address_space     = ["172.31.10.72/32"]
    gateway_address   = "81.145.208.94" ##Either gateway_address or gateway_fqdn should be specified
  }
}




##Public_Ip- Virtual network Gateway
public_ip_name = "dpw-ne-prod-vng2-pip"
publicip_sku = {
  sku  = "Standard" ## Either Basic/Standard
  tier = "Regional" ## Either Regional/Global
}
allocation_method = "Static" ##Either Staic / Dynamic
ip_address        = "51.104.180.208"
zones             = ["1", "2", "3"]
