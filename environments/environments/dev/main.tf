provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "dev_rg" {
  name     = "dev-rg"
  location = "East US"
}
echo "# Dev Terraform Config" > main.tf