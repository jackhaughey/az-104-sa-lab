resource "azurerm_resource_group" "ubuntu1-rg" {
  name     = "${var.rg_name}-sa"
  location = var.location
}