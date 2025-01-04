subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestrackingservice-infra-prod"
name                = "Vnet-trackingservice-prod"
address_space       = ["10.143.64.0/18"]
tags = {
  "Application { name" : "Tracking Service"
  "Application Owner" : "Mohit/Bittu"
  "ENV" : "PROD"
}

subnets = [
    
        { name= "snet-postgresflexibleserver-prod"
       address_prefixes=["10.143.68.0/28"]
        service_endpoints =["Microsoft.Storage"]
        delegation= "Microsoft.DBforPostgreSQL/flexibleServers"
      
    },
    
        
            { name= "snet-migrationsubnet"
           address_prefixes=["10.143.68.16/28"]
    },


              
                { name= "snet-pushbased-logistics-tracking-prod"
               address_prefixes=["10.143.68.32/28"]
                service_endpoints =["Microsoft.Storage"]
                  delegation=  "Microsoft.Web/serverFarms"                       
                },
                
                    { name= "snet-nonaks-prod"
                   address_prefixes=["10.143.66.0/23"]
                    service_endpoints =["Microsoft.Storage"]
                    route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"

                    },

                { name= "snet-aksnode-prod"
                 address_prefixes=["10.143.64.0/23"]
                  route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"

                },

                  { name= "snet-akspod-prod"
                 address_prefixes= ["10.143.72.0/21"]
                  route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"

                  },
                    { name= "snet-fn-railinc-prod"
                   address_prefixes=["10.143.68.224/28"]
                    service_endpoints =["Microsoft.Storage"]
                      delegation=  "Microsoft.Web/serverFarms"                       
                    },

                        { name= "snet-fn-cmapushintegraion-prod"
                       address_prefixes=["10.143.68.128/28"]
                          delegation=  "Microsoft.Web/serverFarms"                       
                        },
                    { name= "snet-fntrackingservice-prod"            
                   address_prefixes=["10.143.68.64/26"]
                    service_endpoints =["Microsoft.Storage"]
                      delegation=  "Microsoft.Web/serverFarms"                       
                      route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"
                    },
                      
                        { name= "snet-fntrackingservice2-prod"
                           address_prefixes=["10.143.69.0/26"]
                    service_endpoints =["Microsoft.Storage"]
                      delegation=  "Microsoft.Web/serverFarms"                       
                      route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"
                        },

                      { name= "snet-aircargoes-prod"
                     address_prefixes= ["10.143.80.0/26"]
                      service_endpoints =["Microsoft.Storage"]
                      delegation=  "Microsoft.Web/serverFarms"                       
                      route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/routeTables/rt-trackingservice-prod"
                      }
]

peerings = {
trackingservice_prod-sechub = {

remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
},

Peer-UAE-K8-Docker ={
remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod"
},

boomi_tracking-prod ={
remote_virtual_network_id = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-Prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-apim-prod"
},

Peer-UAE-Vnet-trackingservice-prod = {
remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
}
}