resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = var.vnet_location
  resource_group_name = var.rgname
  address_space       = [var.addr]
}