output "resource_group_name" {
  value = var.resource_group_name

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "sql_server_name" {
  value = azurerm_mssql_server.sql_server.name
}

output "sql_database_name" {
  value = azurerm_mssql_database.sql_db.name
}

output "data_factory_name" {
  value = azurerm_data_factory.adf.name
}
