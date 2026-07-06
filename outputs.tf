output "postgresql_flexible_server_databases" {
  description = "All postgresql_flexible_server_database resources"
  value       = azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases
}
output "postgresql_flexible_server_databases_charset" {
  description = "List of charset values across all postgresql_flexible_server_databases"
  value       = [for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : v.charset]
}
output "postgresql_flexible_server_databases_collation" {
  description = "List of collation values across all postgresql_flexible_server_databases"
  value       = [for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : v.collation]
}
output "postgresql_flexible_server_databases_name" {
  description = "List of name values across all postgresql_flexible_server_databases"
  value       = [for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : v.name]
}
output "postgresql_flexible_server_databases_server_id" {
  description = "List of server_id values across all postgresql_flexible_server_databases"
  value       = [for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : v.server_id]
}

