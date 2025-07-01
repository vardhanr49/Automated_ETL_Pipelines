provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
}
resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  numeric = true
  special = false
}

resource "azurerm_storage_account" "storage" {
  name                     = lower("${var.storage_account_name}${random_string.storage_suffix.result}")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_mssql_database" "sql_db" {
  name                 = var.sql_database_name
  server_id            = azurerm_mssql_server.sql_server.id

  sku_name             = "Basic"      # Basic service tier

  zone_redundant       = false

  max_size_gb          = 2            # Max size for Basic tier
}


resource "azurerm_data_factory" "adf" {
  name                = "adf-devops-pipeline"
  location            = var.location
  resource_group_name = var.resource_group_name
}
