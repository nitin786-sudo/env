resource "azurerm_storage_container" "example" {
  name                  = "mycontainer"
  storage_account_id    = data.azurerm_storage_account.example.id
  container_access_type = "private"
}

data "azurerm_storage_account" "example" {
  name                = var.storage_account_name
  resource_group_name = var.rg_name
}