output "postgresql_flexible_server_databases_charset" {
  description = "Map of charset values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.charset }
}
output "postgresql_flexible_server_databases_collation" {
  description = "Map of collation values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.collation }
}
output "postgresql_flexible_server_databases_name" {
  description = "Map of name values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.name }
}
output "postgresql_flexible_server_databases_server_id" {
  description = "Map of server_id values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.server_id }
}

