resource "azurerm_resource_group" "rg_name" {
    location = var.rg_location
    name = var.rg_name 
}