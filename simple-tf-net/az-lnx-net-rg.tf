resource "azurerm_resource_group" "ubuntu1-rg" {
  name     = "${var.rg_name}-net"
  location = var.location
}