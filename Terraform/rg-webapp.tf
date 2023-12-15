provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "suicide" {
  name     = "rg-sq"
  location = "Italy North"
}
