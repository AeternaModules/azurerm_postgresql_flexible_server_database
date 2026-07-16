output "postgresql_flexible_server_databases_id" {
  description = "Map of id values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "postgresql_flexible_server_databases_charset" {
  description = "Map of charset values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.charset if v.charset != null && length(v.charset) > 0 }
}
output "postgresql_flexible_server_databases_collation" {
  description = "Map of collation values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.collation if v.collation != null && length(v.collation) > 0 }
}
output "postgresql_flexible_server_databases_name" {
  description = "Map of name values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgresql_flexible_server_databases_server_id" {
  description = "Map of server_id values across all postgresql_flexible_server_databases, keyed the same as var.postgresql_flexible_server_databases"
  value       = { for k, v in azurerm_postgresql_flexible_server_database.postgresql_flexible_server_databases : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}

