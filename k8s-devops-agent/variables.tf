variable "subscription_id" {
  type = string
}
variable "aks_cluster_name" {
  type = string
}
variable "aks_resource_group_name" {
  type = string
}
variable "namespace_name" {
  type = string
}
variable "agent_image" {
  type = string
}
variable "keyvault_name" {
  type = string
}
variable "keyvault_resource_group_name" {
  type = string
}
# variable "azp_pool" {
#   type = string
# }
variable "azp_token_secret" {
  type = string
}
variable "azp_url" {
  type    = string
  default = "https://dev.azure.com/dpwhotfsonline"
}