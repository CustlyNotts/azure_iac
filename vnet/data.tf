data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}


#data "external" "get_access_token" {
#  program = var.tfclios == "windows" ? ["powershell", "-Command", "& { $result = az account get-access-token --resource api://${local.ipam_apiId} | ConvertFrom-Json; $result.expires_on = $result.expires_on.ToString(); $result | ConvertTo-Json }"] : ["az", "account", "get-access-token", "--resource", "api://${local.ipam_apiId}"]
#}

data "external" "get_access_token" {
  program = var.tfclios == "windows" ? [
    "powershell.exe",
    "-Command",
    "& { $result = az account get-access-token --resource api://${local.ipam_apiId} | ConvertFrom-Json; $result.expires_on = $result.expires_on.ToString(); $result | ConvertTo-Json }"
    ] : [
    "bash",
    "-c",
    "az account get-access-token --resource 'api://${local.ipam_apiId}' | jq '.expires_on |= tostring'"
  ]
}
