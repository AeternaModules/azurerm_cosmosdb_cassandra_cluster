output "cosmosdb_cassandra_clusters_id" {
  description = "Map of id values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_cassandra_clusters_authentication_method" {
  description = "Map of authentication_method values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.authentication_method if v.authentication_method != null && length(v.authentication_method) > 0 }
}
output "cosmosdb_cassandra_clusters_client_certificate_pems" {
  description = "Map of client_certificate_pems values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.client_certificate_pems if v.client_certificate_pems != null && length(v.client_certificate_pems) > 0 }
}
output "cosmosdb_cassandra_clusters_default_admin_password" {
  description = "Map of default_admin_password values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.default_admin_password if v.default_admin_password != null && length(v.default_admin_password) > 0 }
  sensitive   = true
}
output "cosmosdb_cassandra_clusters_delegated_management_subnet_id" {
  description = "Map of delegated_management_subnet_id values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.delegated_management_subnet_id if v.delegated_management_subnet_id != null && length(v.delegated_management_subnet_id) > 0 }
}
output "cosmosdb_cassandra_clusters_external_gossip_certificate_pems" {
  description = "Map of external_gossip_certificate_pems values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.external_gossip_certificate_pems if v.external_gossip_certificate_pems != null && length(v.external_gossip_certificate_pems) > 0 }
}
output "cosmosdb_cassandra_clusters_external_seed_node_ip_addresses" {
  description = "Map of external_seed_node_ip_addresses values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.external_seed_node_ip_addresses if v.external_seed_node_ip_addresses != null && length(v.external_seed_node_ip_addresses) > 0 }
}
output "cosmosdb_cassandra_clusters_hours_between_backups" {
  description = "Map of hours_between_backups values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.hours_between_backups if v.hours_between_backups != null }
}
output "cosmosdb_cassandra_clusters_identity" {
  description = "Map of identity values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "cosmosdb_cassandra_clusters_location" {
  description = "Map of location values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cosmosdb_cassandra_clusters_name" {
  description = "Map of name values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_cassandra_clusters_repair_enabled" {
  description = "Map of repair_enabled values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.repair_enabled if v.repair_enabled != null }
}
output "cosmosdb_cassandra_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cosmosdb_cassandra_clusters_tags" {
  description = "Map of tags values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cosmosdb_cassandra_clusters_version" {
  description = "Map of version values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.version if v.version != null && length(v.version) > 0 }
}

