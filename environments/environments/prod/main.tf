provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "dev_rg" {
  name     = "dev-rg"
  location = "East US"
}
resource "azurerm_storage_account" "dev_storage" {
  name                     = "devstorageacct"
  resource_group_name      = azurerm_resource_group.dev_rg.name
  location                 = azurerm_resource_group.dev_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
echo "# Prod Terraform Config" > main.tfG