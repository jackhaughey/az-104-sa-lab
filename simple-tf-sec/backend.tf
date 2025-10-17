terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstagestate0610g"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}