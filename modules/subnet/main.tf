resource "azurerm_subnet" "examplesub" {
  name                 = var.subname
  resource_group_name  = var.subrgname
  virtual_network_name = var.vnetnamesub
  address_prefixes     = [var.addrsub]
}