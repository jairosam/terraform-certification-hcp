variable "vnet_name" {
  type = string
  description = "net_vnet_name"
}

variable "address_space" {
  type = string
	description = "net_vnet_address_space"
}

variable "resource_group_name" {
	type = string
	description = "net_vnet_resource_group_name"
}

variable "location" {
	type = string
	description = "net_vnet_location"
}