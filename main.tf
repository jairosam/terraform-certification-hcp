resource "azurerm_resource_group" "rg-demo" {
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source = "app.terraform.io/HCA004/hcp/certification"

  vnet_name            = var.vnet_name
  address_space        = var.address_space
  resource_group_name  = var.resource_group_name
  location             = var.location
}