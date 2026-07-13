variable "postgresql_flexible_server_databases" {
  description = <<EOT
Map of postgresql_flexible_server_databases, attributes below
Required:
    - name
    - server_id
Optional:
    - charset
    - collation
EOT

  type = map(object({
    name      = string
    server_id = string
    charset   = optional(string)
    collation = optional(string)
  }))
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

