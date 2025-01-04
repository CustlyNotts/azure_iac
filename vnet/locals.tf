locals {
  addrs_by_idx  = var.use_ipam ? contains(local.network_objs[*].snet_mask, 0) ? null : cidrsubnets(azureipam_reservation.main[0].cidr, local.network_objs[*].snet_mask...) : null
  addrs_by_name = var.use_ipam ? contains(local.network_objs[*].snet_mask, 0) ? null : { for i, n in var.subnets : n.name => local.addrs_by_idx[i] if n.name != null } : null
  network_objs = [for i, n in var.subnets : {
    name      = n.name
    snet_mask = var.use_ipam ? (n.snet_mask - var.vnet_mask) : null
  }]

  ipam_url   = "https://dpwazureipamappservice.azurewebsites.net/"
  ipam_apiId = "196110e9-4599-4ebc-9c84-a6644c11797e"

  service_delegation_actions = {
    "Microsoft.ApiManagement/service"                 = ["virtualNetworks/subnets/join/action", "virtualNetworks/subnets/prepareNetworkPolicies/action"]
    "Microsoft.AzureCosmosDB/clusters"                = ["virtualNetworks/subnets/join/action"]
    "Microsoft.BareMetal/AzureVMware"                 = ["networkinterfaces/*", "virtualNetworks/subnets/join/action"]
    "Microsoft.BareMetal/CrayServers"                 = ["networkinterfaces/*", "virtualNetworks/subnets/join/action"]
    "Microsoft.Batch/batchAccounts"                   = ["virtualNetworks/subnets/action"]
    "Microsoft.ContainerInstance/containerGroups"     = ["virtualNetworks/subnets/action"]
    "Microsoft.ContainerService/managedClusters"      = ["virtualNetworks/subnets/join/action"]
    "Microsoft.Databricks/workspaces"                 = formatlist("virtualNetworks/subnets/%s", ["join/action", "prepareNetworkPolicies/action", "unprepareNetworkPolicies/action"])
    "Microsoft.DBforMySQL/flexibleServers"            = ["virtualNetworks/subnets/join/action"]
    "Microsoft.DBforMySQL/serversv2"                  = ["virtualNetworks/subnets/join/action"]
    "Microsoft.DBforPostgreSQL/flexibleServers"       = ["virtualNetworks/subnets/join/action"]
    "Microsoft.DBforPostgreSQL/serversv2"             = ["virtualNetworks/subnets/join/action"]
    "Microsoft.DBforPostgreSQL/singleServers"         = ["virtualNetworks/subnets/join/action"]
    "Microsoft.HardwareSecurityModules/dedicatedHSMs" = ["networkinterfaces/*", "virtualNetworks/subnets/join/action"]
    "Microsoft.Kusto/clusters"                        = formatlist("virtualNetworks/subnets/%s", ["join/action", "prepareNetworkPolicies/action", "unprepareNetworkPolicies/action"])
    "Microsoft.Logic/integrationServiceEnvironments"  = ["virtualNetworks/subnets/action"]
    "Microsoft.LabServices/labplans"                  = ["virtualNetworks/subnets/join/action"]
    "Microsoft.MachineLearningServices/workspaces"    = ["virtualNetworks/subnets/join/action"]
    "Microsoft.Netapp/volumes"                        = ["networkinterfaces/*", "virtualNetworks/subnets/join/action"]
    "Microsoft.Orbital/orbitalGateways"               = ["publicIPAddresses/join/action", "virtualNetworks/subnets/join/action", "virtualNetworks/read", "publicIPAddresses/read"]
    "Microsoft.PowerPlatform/vnetaccesslinks"         = ["virtualNetworks/subnets/join/action"]
    "Microsoft.ServiceFabricMesh/networks"            = ["virtualNetworks/subnets/action"]
    "Microsoft.Sql/managedInstances"                  = formatlist("virtualNetworks/subnets/%s", ["join/action", "prepareNetworkPolicies/action", "unprepareNetworkPolicies/action"])
    "Microsoft.StoragePool/diskPools"                 = ["virtualNetworks/read"]
    "Microsoft.StreamAnalytics/streamingJobs"         = ["virtualNetworks/subnets/join/action"]
    "Microsoft.Synapse/workspaces"                    = ["virtualNetworks/subnets/join/action"]
    "Microsoft.Web/hostingEnvironments"               = ["virtualNetworks/subnets/action"]
    "Microsoft.Web/serverFarms"                       = ["virtualNetworks/subnets/action"]
    "NGINX.NGINXPLUS/nginxDeployments"                = ["virtualNetworks/subnets/join/action"]
    "PaloAltoNetworks.Cloudngfw/firewalls"            = ["virtualNetworks/subnets/join/action"]
  }
  Fall_back_region             = data.azurerm_resource_group.current.location
  UAE_region                   = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "UAE" : ""
  UAE_provider                 = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "UAE" : ""
  UAE_harmony_peering          = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod" : ""
  UAE_smartssh_peering         = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/113fbeb3-ce3b-4e2a-b3fd-f9176ff893f3/resourceGroups/rg-dpw-uae-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-uae-smart-ssh" : ""
  UAE_harmony_resource_group   = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "rg-cpharmony-uae-prod" : ""
  UAE_smartssh_resource_group  = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "rg-dpw-uae-smart-ssh" : ""
  UAE_harmony_virtual_network  = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "vnet-cpharmony-uae-prod" : ""
  UAE_smartssh_virtual_network = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "vnet-dpw-uae-smart-ssh" : ""
  UAE_sechub_peering           = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub" : ""
  UAE_sechub_resource_group    = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "rgnwsechub" : ""
  UAE_sechub_virtual_network   = contains(["uae", "uaenorth", "uaecentral", "india", "centralindia", "southindia", "westindia"], "${azurerm_virtual_network.current.location}") ? "vnetsechub" : ""

  EUR_region                   = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "EUR" : ""
  EUR_provider                 = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "EUR" : ""
  EUR_harmony_peering          = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-cpharmony-eur-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-eur-prod" : ""
  EUR_smartssh_peering         = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/aa93819a-6849-4777-9858-d71c3c1d8260/resourceGroups/rg-dpw-eur-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-eur-smart-ssh" : ""
  EUR_harmony_resource_group   = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "rg-cpharmony-eur-prod" : ""
  EUR_smartssh_resource_group  = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "rg-dpw-eur-smart-ssh" : ""
  EUR_harmony_virtual_network  = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "vnet-cpharmony-eur-prod" : ""
  EUR_smartssh_virtual_network = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "vnet-dpw-eur-smart-ssh" : ""
  EUR_sechub_peering           = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub" : ""
  EUR_sechub_resource_group    = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "rg-eur-sechub" : ""
  EUR_sechub_virtual_network   = contains(["uk", "ukwest", "uksouth"], "${azurerm_virtual_network.current.location}") ? "EUR-Vnetsechub" : ""

  APAC_region                   = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "APAC" : ""
  APAC_provider                 = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "APAC" : ""
  APAC_harmony_peering          = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/2829b90f-e2a6-45f3-bcf7-35f4923df4e7/resourceGroups/rg-cpharmony-apac-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-apac-prod" : ""
  APAC_smartssh_peering         = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/533104de-f76b-43d3-a427-ff34cfb55b3b/resourceGroups/rg-dpw-apc-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-apc-smart-ssh" : ""
  APAC_harmony_resource_group   = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "rg-cpharmony-apac-prod" : ""
  APAC_smartssh_resource_group  = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "rg-dpw-apc-smart-ssh" : ""
  APAC_harmony_virtual_network  = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "vnet-cpharmony-apac-prod" : ""
  APAC_smartssh_virtual_network = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "vnet-dpw-apc-smart-ssh" : ""
  APAC_sechub_peering           = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/2829b90f-e2a6-45f3-bcf7-35f4923df4e7/resourceGroups/rg-apac-sechub/providers/Microsoft.Network/virtualNetworks/APAC-Vnetsechub" : ""
  APAC_sechub_resource_group    = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "rg-apac-sechub" : ""
  APAC_sechub_virtual_network   = contains(["asia", "asiapacific", "eastasia", "southeastasia"], "${azurerm_virtual_network.current.location}") ? "APAC-Vnetsechub" : ""

  AMR_region                   = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "AMR" : ""
  AMR_provider                 = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "AMR" : ""
  AMR_harmony_peering          = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-cpharmony-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-amr-prod" : ""
  AMR_smartssh_peering         = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/95cfe661-93f1-4a8c-a898-3e0a6417d194/resourceGroups/rg-dpw-amr-smart-ssh/providers/Microsoft.Network/virtualNetworks/vnet-dpw-amr-smart-ssh" : ""
  AMR_harmony_resource_group   = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "rg-cpharmony-amr-prod" : ""
  AMR_smartssh_resource_group  = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "rg-dpw-amr-smart-ssh" : ""
  AMR_harmony_virtual_network  = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "vnet-cpharmony-amr-prod" : ""
  AMR_smartssh_virtual_network = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "vnet-dpw-amr-smart-ssh" : ""
  AMR_sechub_peering           = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-amr-sechub/providers/Microsoft.Network/virtualNetworks/AMR-Vnetsechub" : ""
  AMR_sechub_resource_group    = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "rg-amr-sechub" : ""
  AMR_sechub_virtual_network   = contains(["canada", "canadacentral", "canadaeast", "eastus", "eastus2", "westus"], "${azurerm_virtual_network.current.location}") ? "AMR-Vnetsechub" : ""

  region                   = coalesce(local.UAE_region, local.APAC_region, local.EUR_region, local.AMR_region, local.Fall_back_region)
  provider                 = coalesce(local.UAE_provider, local.APAC_provider, local.EUR_provider, local.AMR_provider, "fall_back_provider")
  harmony_peering          = coalesce(local.UAE_harmony_peering, local.APAC_harmony_peering, local.EUR_harmony_peering, local.AMR_harmony_peering, "fall_back_harmony")
  smartssh_peering         = coalesce(local.UAE_smartssh_peering, local.APAC_smartssh_peering, local.EUR_smartssh_peering, local.AMR_smartssh_peering, "fall_back_ssh")
  smartssh_resource_group  = coalesce(local.UAE_smartssh_resource_group, local.APAC_smartssh_resource_group, local.EUR_smartssh_resource_group, local.AMR_smartssh_resource_group, "fall_back_rg")
  smartssh_virtual_network = coalesce(local.UAE_smartssh_virtual_network, local.APAC_smartssh_virtual_network, local.EUR_smartssh_virtual_network, local.AMR_smartssh_virtual_network, "fall_back_vnet")
  harmony_resource_group   = coalesce(local.UAE_harmony_resource_group, local.APAC_harmony_resource_group, local.EUR_harmony_resource_group, local.AMR_harmony_resource_group, "fall_back_rg")
  harmony_virtual_network  = coalesce(local.UAE_harmony_virtual_network, local.APAC_harmony_virtual_network, local.EUR_harmony_virtual_network, local.AMR_harmony_virtual_network, "fall_back_vnet")
  sechub_peering           = coalesce(local.UAE_sechub_peering, local.APAC_sechub_peering, local.EUR_sechub_peering, local.AMR_sechub_peering, "fall_back_sechub")
  sechub_resource_group    = coalesce(local.UAE_sechub_resource_group, local.APAC_sechub_resource_group, local.EUR_sechub_resource_group, local.AMR_sechub_resource_group, "fall_back_rg")
  sechub_virtual_network   = coalesce(local.UAE_sechub_virtual_network, local.APAC_sechub_virtual_network, local.EUR_sechub_virtual_network, local.AMR_sechub_virtual_network, "fall_back_vnet")
}

