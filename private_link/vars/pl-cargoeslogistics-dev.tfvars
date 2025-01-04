subscription_id     = <subscription_id>
name                                        = "pl-cargoeslogistics-dev"
resource_group_name                         = "rg-cargoeslogisticsdev-infra"
location                                    = "UAE North"
load_balancer_frontend_ip_configuration_ids = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/mc_rg-cargoeslogisticsplatform-dev_aks-cargoeslogistics-dev_uaenorth/providers/Microsoft.Network/loadBalancers/kubernetes-internal/frontendIPConfigurations/ad58ec1caf41742fbb8af2e8fb5a1238"
#alias="pl-cargoeslogistics-dev.9eb3055f-e0b7-4438-a209-1d5469d6d29e.uaenorth.azure.privatelinkservice"
nat_ip_configurations = [
  {
    name = "snet-aks-dev-1"
    #private_ip_address         = "10.242.16.196"
    private_ip_address_version = "IPv4"
    subnet_id                  = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev/subnets/snet-aks-dev"
    primary                    = true
  },
  # Add additional configurations as needed
]

tags = {
  "Application Name" : "Azure infra"
  "Application Owner" : "Global IT Infra Team"
  "ENV" : "INFRA"
}

