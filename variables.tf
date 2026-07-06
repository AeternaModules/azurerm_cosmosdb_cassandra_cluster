variable "cosmosdb_cassandra_clusters" {
  description = <<EOT
Map of cosmosdb_cassandra_clusters, attributes below
Required:
    - default_admin_password
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
    default_admin_password           = string
    delegated_management_subnet_id   = string
    location                         = string
    name                             = string
    resource_group_name              = string
    authentication_method            = optional(string) # Default: "Cassandra"
    client_certificate_pems          = optional(list(string))
    external_gossip_certificate_pems = optional(list(string))
    external_seed_node_ip_addresses  = optional(list(string))
    hours_between_backups            = optional(number) # Default: 24
    repair_enabled                   = optional(bool)   # Default: true
    tags                             = optional(map(string))
    version                          = optional(string) # Default: "3.11"
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
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_cassandra_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: delegated_management_subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: delegated_management_subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: authentication_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: client_certificate_pems[*]
  #   source:    [from validate.IsCert] !ok
  # path: client_certificate_pems[*]
  #   source:    [from validate.IsCert] block == nil
  # path: external_gossip_certificate_pems[*]
  #   source:    [from validate.IsCert] !ok
  # path: external_gossip_certificate_pems[*]
  #   source:    [from validate.IsCert] block == nil
  # path: external_seed_node_ip_addresses[*]
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

