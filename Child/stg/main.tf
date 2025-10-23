resource "azurerm_storage_account" "name" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "stgname" {
    value = azurerm_storage_account.name.name
}

