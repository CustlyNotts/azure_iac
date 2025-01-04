subscription_id     = <subscription_id>
resource_group_name = "rg-cnsdrhubnw"
location            = "ukwest"
##Virtual_network_gateway
name                 = "ERDRHUBCNS"
virtual_network_name = "vnet-cnsdrhub"
subnet               = "GatewaySubnet"
sku                  = "Standard"
type                 = "ExpressRoute"
active_active        = false
enable_bgp           = false
vpn_type             = "PolicyBased"
ip_configuration = {
  name                          = "default"
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id          = "vipERDRHUBGatewayIP" ##This attribute ID value takes from data source locals - should not be empty (name is required)
  subnet_id                     = "GatewaySubnet"       ##This attribute ID value takes from data source locals - should not be empty (name is required)
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}




##Virtual_network_gateway_connection - multiple connection you can add key value blocks  - number of connection == number of localgateway 
express_route_rg   = "rgexpcrctcns"   #only for expressroute VPN
express_route_name = "exprcrctcnssec" #only for expressroute VPN
connection_list = {
  erdrhub = { # this name should be same in connnection and localgateway
    connection_name          = "erdrhub"
    connection_type          = "ExpressRoute"
    dpd_timeout_seconds      = 0
    connection_enable_bgp    = false
    routing_weight           = 0
    express_route_circuit_id = "exprcrctcnssec" #need to mention the express_route name not the ID. it will fetch using locals vars
  }
}



##Virtual_network_local_gateway - Express Route - No need for local gateway - Keep it null
local_gateway_connections = null




##Public_Ip- Virtual network Gateway
public_ip_name = "vipERDRHUBGatewayIP"
publicip_sku = {
  sku  = "Basic"    ## Either Basic/Standard
  tier = "Regional" ## Either Regional/Global
}
allocation_method = "Dynamic" ##Either Staic / Dynamic
ip_address        = "51.141.90.237"
zones             = []
