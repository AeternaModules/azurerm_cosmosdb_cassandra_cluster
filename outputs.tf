output "cosmosdb_cassandra_clusters_id" {
  description = "Map of id values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.id }
}
output "cosmosdb_cassandra_clusters_authentication_method" {
  description = "Map of authentication_method values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.authentication_method }
}
output "cosmosdb_cassandra_clusters_client_certificate_pems" {
  description = "Map of client_certificate_pems values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.client_certificate_pems }
}
output "cosmosdb_cassandra_clusters_default_admin_password" {
  description = "Map of default_admin_password values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.default_admin_password }
  sensitive   = true
}
output "cosmosdb_cassandra_clusters_delegated_management_subnet_id" {
  description = "Map of delegated_management_subnet_id values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.delegated_management_subnet_id }
}
output "cosmosdb_cassandra_clusters_external_gossip_certificate_pems" {
  description = "Map of external_gossip_certificate_pems values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.external_gossip_certificate_pems }
}
output "cosmosdb_cassandra_clusters_external_seed_node_ip_addresses" {
  description = "Map of external_seed_node_ip_addresses values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.external_seed_node_ip_addresses }
}
output "cosmosdb_cassandra_clusters_hours_between_backups" {
  description = "Map of hours_between_backups values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.hours_between_backups }
}
output "cosmosdb_cassandra_clusters_identity" {
  description = "Map of identity values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.identity }
}
output "cosmosdb_cassandra_clusters_location" {
  description = "Map of location values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.location }
}
output "cosmosdb_cassandra_clusters_name" {
  description = "Map of name values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.name }
}
output "cosmosdb_cassandra_clusters_repair_enabled" {
  description = "Map of repair_enabled values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.repair_enabled }
}
output "cosmosdb_cassandra_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.resource_group_name }
}
output "cosmosdb_cassandra_clusters_tags" {
  description = "Map of tags values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.tags }
}
output "cosmosdb_cassandra_clusters_version" {
  description = "Map of version values across all cosmosdb_cassandra_clusters, keyed the same as var.cosmosdb_cassandra_clusters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : k => v.version }
}

