resource "azurerm_resource_group" "rg-demo" {
  name     = "rg-demo"
  location = "eastus"
}

resource "azurerm_storage_account" "staccdemo" {
  name                     = "stacdemohcpjairotest"
  resource_group_name      = azurerm_resource_group.rg-demo.name
  location                 = azurerm_resource_group.rg-demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "vnetdemo" {
  name                = "vnetdemo"
  address_space       = [ "10.10.0.0/16" ]
  resource_group_name = azurerm_resource_group.rg-demo.name
  location            = azurerm_resource_group.rg-demo.location

}