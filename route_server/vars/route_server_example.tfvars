subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-dr-infra"
location  = "uksouth"
subnet = "snet-nonaks-prod-dr"
sku = "Standard"
virtual_network_name = "vnet-cargoesflow-dr"
branch_to_branch_traffic_enabled = false
name = "route-server-test"
tags = {
  "ENV": "PROD",
  "Application Name": "Checkpoint App Firewall",
  "Application Owner": "Muhammad Tariq"
}


####Route Server Connection#####
route_server_bgp_connection = {
  connection1 = {
    connection_name = "route-connection1"
    route_server_id = "router_server"
    peer_asn = 640200
    peer_ip = "54.2.4.123"
  }
}

##Public_Ip- Virtual network Gateway
public_ip_name = "route-server-ip"
publicip_sku   = {
  sku = "Standard"    ## Either Basic/Standard
  tier = "Regional"   ## Either Regional/Global
}
allocation_method = "Dynamic"  ##Either Staic / Dynamic
ip_address      = ""
zones           = ["1", "2", "3"]
