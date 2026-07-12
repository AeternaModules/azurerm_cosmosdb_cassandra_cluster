data "azurerm_key_vault_secret" "default_admin_password" {
  for_each     = { for k, v in var.cosmosdb_cassandra_clusters : k => v if v.default_admin_password_key_vault_id != null && v.default_admin_password_key_vault_secret_name != null }
  name         = each.value.default_admin_password_key_vault_secret_name
  key_vault_id = each.value.default_admin_password_key_vault_id
}
resource "azurerm_cosmosdb_cassandra_cluster" "cosmosdb_cassandra_clusters" {
  for_each = var.cosmosdb_cassandra_clusters

  default_admin_password           = each.value.default_admin_password != null ? each.value.default_admin_password : try(data.azurerm_key_vault_secret.default_admin_password[each.key].value, null)
  delegated_management_subnet_id   = each.value.delegated_management_subnet_id
  location                         = each.value.location
  name                             = each.value.name
  resource_group_name              = each.value.resource_group_name
  authentication_method            = each.value.authentication_method
  client_certificate_pems          = each.value.client_certificate_pems
  external_gossip_certificate_pems = each.value.external_gossip_certificate_pems
  external_seed_node_ip_addresses  = each.value.external_seed_node_ip_addresses
  hours_between_backups            = each.value.hours_between_backups
  repair_enabled                   = each.value.repair_enabled
  tags                             = each.value.tags
  version                          = each.value.version

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      type = identity.value.type
    }
  }
}

