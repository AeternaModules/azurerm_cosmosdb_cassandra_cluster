variable "cosmosdb_cassandra_clusters" {
  description = <<EOT
Map of cosmosdb_cassandra_clusters, attributes below
Required:
    - default_admin_password
    - default_admin_password_key_vault_id (optional, alternative to default_admin_password)
    - default_admin_password_key_vault_secret_name (optional, alternative to default_admin_password)
    - delegated_management_subnet_id
    - location
    - name
    - resource_group_name
Optional:
    - authentication_method
    - client_certificate_pems
    - external_gossip_certificate_pems
    - external_seed_node_ip_addresses
    - hours_between_backups
    - repair_enabled
    - tags
    - version
    - identity (block):
        - type (required)
EOT

  type = map(object({
    default_admin_password                       = string
    default_admin_password_key_vault_id          = optional(string)
    default_admin_password_key_vault_secret_name = optional(string)
    delegated_management_subnet_id               = string
    location                                     = string
    name                                         = string
    resource_group_name                          = string
    authentication_method                        = optional(string)
    client_certificate_pems                      = optional(list(string))
    external_gossip_certificate_pems             = optional(list(string))
    external_seed_node_ip_addresses              = optional(list(string))
    hours_between_backups                        = optional(number)
    repair_enabled                               = optional(bool)
    tags                                         = optional(map(string))
    version                                      = optional(string)
    identity = optional(object({
      type = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        length(v.default_admin_password) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        v.version == null || (contains(["3.11", "4.0", "4.1", "5.0"], v.version))
      )
    ])
    error_message = "must be one of: 3.11, 4.0, 4.1, 5.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_clusters : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

