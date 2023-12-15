
data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}


resource "azurerm_service_plan" "service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "backend" {
  name                = var.backend_app_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = azurerm_service_plan.service_plan.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {}
}

resource "azurerm_static_site" "frontend" {
  name                = var.frontend_app_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = "West Europe"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "8974023kasd"
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "sq-storage-container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "tfstate" {
  name                   = "terraform.tfstate"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = "Block"
  source                 = "./backup-terraform.tfstate"
}
