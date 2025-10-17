resource "azurerm_storage_account" "storage-account06g" {
  name                     = "azstorageacct06g"
  resource_group_name      = azurerm_resource_group.ubuntu1-rg.name
  location                 = azurerm_resource_group.ubuntu1-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "files_container" {
  name                  = "build-files"
  storage_account_name  = azurerm_storage_account.storage-account06g.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "ablob" {
  name                   = "someblob"
  storage_account_name   = azurerm_storage_account.storage-account06g.name
  storage_container_name = azurerm_storage_container.files_container.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}