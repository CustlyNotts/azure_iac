variable "subscription_id" {
  type = string
}

variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "apimName" {
  type = string
}

variable "apimPublisherName" {
  type = string
}

variable "apimPublisherEmail" {
  type = string
}
variable "apimSku" {
  type = string
}
variable "apimSkuCapacity" {
  type = string
}
variable "subnet_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}