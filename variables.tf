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
    charset   = optional(string) # Default: "UTF8"
    collation = optional(string) # Default: "en_US.utf8"
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_postgresql_flexible_server_database's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FlexibleServerDatabaseName] !ok
  # path: name
  #   source:    [from validate.FlexibleServerDatabaseName] len(v) < minLength
  # path: name
  #   source:    [from validate.FlexibleServerDatabaseName] len(v) > maxLength
  # path: name
  #   source:    [from validate.FlexibleServerDatabaseName] !regexp.MustCompile(`^[a-zA-Z-_]`).MatchString(v)
  # path: name
  #   source:    [from validate.FlexibleServerDatabaseName] !regexp.MustCompile(`^[a-zA-Z0-9-_]+$`).MatchString(v)
  # path: server_id
  #   source:    [from databases.ValidateFlexibleServerID] !ok
  # path: server_id
  #   source:    [from databases.ValidateFlexibleServerID] err != nil
  # path: charset
  #   source:    [from validate.DatabaseCharset] !ok
  # path: charset
  #   source:    [from validate.DatabaseCharset] !charsets[strings.ToUpper(value)]
  # path: collation
  #   source:    [from validate.PostgresqlFlexibleServerDatabaseCollation] !ok
  # path: collation
  #   source:    [from validate.PostgresqlFlexibleServerDatabaseCollation] !collations[value]
}

